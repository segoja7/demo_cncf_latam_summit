import json
import base64
import schemas.up.role as role
import schemas.up.rolePolicyAttachment as rolePolicyAttachment
import schemas.up.kmsKey as kmsKey
import schemas.up.kmsAlias as kmsAlias
import schemas.up.eksCluster as eksCluster
import schemas.up.clusterAuth as clusterAuth
import schemas.up.eksNodeGroup as eksNodegroup
import schemas.up.eksAddon as eksAddon
import schemas.up.providerConfigHelm as providerConfigHelm
import schemas.up.release as release
import schemas.up.providerConfigKubernetes as providerConfigKubernetes
import schemas.up.object as object
import schemas.up.openIDConnectProvider as openIDConnectProvider
import schemas.up.securityGroup as securityGroup
import schemas.up.securityGroupRule as securityGroupRule
import schemas.up.policy as policy
import schemas.up.accessEntry as accessEntry
import schemas.up.accessPolicyAssociation as accessPolicyAssociation

oxr = option("params").oxr
_ocds = option("params").ocds or {}
dxr = option("params").dxr

_id = oxr.spec.id
_region = oxr.spec.region
_providerConfig = oxr.spec.providerConfigName or "default"
_tags = oxr.spec.tags or {}
_encryptCluster = oxr.spec.encryptCluster or False
_accountId = oxr.spec.accountId or "account_id_not_set"
_authenticationMode = oxr.spec.authenticationMode or "API_AND_CONFIG_MAP"
_logTypes = oxr.spec.logging or []
_publicAccessCidrs = oxr.spec.publicAccessCidrs or ["0.0.0.0/0"]
_endpointPublicAccess = oxr.spec.endpointPublicAccess or True
_endpointPrivateAccess = oxr.spec.endpointPrivateAccess or True
_networkId = oxr.spec.networkId
_clusterVersion = oxr.spec.clusterVersion
_nodeGroupConfig = oxr.spec.nodeGroup or {}
_addonsConfig = oxr.spec.addons or []
_labels = {"claim-name" = _id}
_helmAddonsConfig = oxr.spec.helmAddonsConfig or []
_createHelmReleases = oxr.spec.createHelmReleases or False  # Control helm releases
_createAddonsInfrastructure = oxr.spec.createAddonsInfrastructure or False  # Control roles + SA
_domainNames = oxr.spec.domainNames
_certificateSecretName = oxr.spec.certificateSecretName
_hostedZoneID = oxr.spec.hostedZoneID or "hosted_zone_id_not_set"
_clusterTopology = oxr.spec.clusterTopology
_enableArgo = oxr.spec.enableArgo

_cluster_assume_role_policy = json.encode({
    "Version": "2012-10-17"
    "Statement": [{
        "Effect": "Allow"
        "Principal": {"Service": "eks.amazonaws.com"}
        "Action": "sts:AssumeRole"
    }]
})

_node_assume_role_policy = json.encode({
    "Version": "2012-10-17"
    "Statement": [{
        "Effect": "Allow"
        "Principal": {
            "Service": [
                "ec2.amazonaws.com"
            ]
        }
        "Action": "sts:AssumeRole"
    }]
})

_cluster_role_resource = role.RoleBlueprint {
    _name = "role-eks-cluster-${_id}"
    _labels = _labels
    _providerConfig = _providerConfig
    _assumeRolePolicy = _cluster_assume_role_policy
    _description = "role-eks-cluster"
    _tags = _tags | {
        Name = _name
    }
}

_node_role_resource = role.RoleBlueprint {
    _name = "role-eks-node-${_id}"
    _labels = _labels
    _providerConfig = _providerConfig
    _assumeRolePolicy = _node_assume_role_policy
    _description = "role-eks-nodes"
    _tags = _tags | {
        Name = _name
    }
}

_cluster_policy_attachment_resource = [rolePolicyAttachment.RolepolicyattachmentBlueprint {
    _name = "eks-cluster-policy-${s.name}-${_id}".lower()
    _labels = _labels
    _providerConfig = _providerConfig
    _role = _cluster_role_resource._name
    _policyArn = s.arn
} for s in [
    {name = "AmazonEKSClusterPolicy", arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"}
    {name = "AmazonEKSVPCResourceController", arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"}
]]

_node_policy_attachments_resource = [rolePolicyAttachment.RolepolicyattachmentBlueprint {
    _name = "eks-cluster-node-policy-${s.name}-${_id}".lower()
    _labels = _labels
    _providerConfig = _providerConfig
    _role = _node_role_resource._name
    _policyArn = s.arn
} for s in [
    {name = "AmazonEKSWorkerNodePolicy", arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"}
    {name = "AmazonEC2ContainerRegistryReadOnly", arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"}
    {name = "AmazonEKS-CNI-Policy", arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"}
]]

_kms_resources = []
_eks_encryption_config = []

if _encryptCluster == True:
    _cluster_role_arn = "arn:aws:iam::${_accountId}:role/${_cluster_role_resource._name}"

    _kms_key_resource = kmsKey.KeyBlueprint {
        _name = "kms-key-eks-${_id}"
        _labels = _labels
        _providerConfig = _providerConfig
        _description = "KMS key for EKS encryption"
        _enableKeyRotation = True
        _isEnabled = True
#        _keySpec = "SYMMETRIC_DEFAULT"
        _keyUsage = "ENCRYPT_DECRYPT"
        _region = _region
        _multiRegion = False
#        _origin = "AWS_KMS"
        _deletionWindowInDays = 7
        _policy = json.encode({
            "Version": "2012-10-17"
            "Statement": [
                {
                    "Sid": "Enable IAM User Permissions"
                    "Effect": "Allow"
                    "Principal": {"AWS": "arn:aws:iam::${_accountId}:root"}
                    "Action": "kms:*"
                    "Resource": "*"
                }
                {
                    "Sid": "Allow EKS service to use the key"
                    "Effect": "Allow"
                    "Principal": {"AWS": _cluster_role_arn}
                    "Action": ["kms:CreateGrant", "kms:DescribeKey"]
                    "Resource": "*"
                }
            ]
        })
        _tags = _tags | {Name = _name}
    }
    _kms_alias_resource = kmsAlias.AliasBlueprint {
        _name = "alias-eks-${_id}"
        _labels = _labels
        _providerConfig = _providerConfig
        _region = _region
        _targetKeyIdSelector = {
            matchControllerRef = True
        }
    }
    _kms_resources = [_kms_key_resource, _kms_alias_resource]
    _eks_encryption_config = [{
        resources: ["secrets"]
        provider: {
            keyArn: "arn:aws:kms:${_region}:${_accountId}:alias/${_kms_alias_resource._name}"
        }
    }]

_eks_cluster_resource = eksCluster.ClusterBlueprint {
    _name = "eks-cluster-${_id}"
    _labels = _labels | ({"argocd-hub": _id} if _clusterTopology.typeCluster == "Hub" else {})
    _region = _region
    _providerConfig = _providerConfig
    _accessConfig = [{
        authenticationMode: _authenticationMode
        bootstrapClusterCreatorAdminPermissions: True
    }]
    _bootstrapSelfManagedAddons = True
    _deletionProtection = False
    _encryptionConfig = _eks_encryption_config
    if len(_logTypes) > 0:
        _enabledClusterLogTypes = _logTypes
    _forceUpdateVersion = False
    _kubernetesNetworkConfig = [{
        ipFamily: "ipv4"
        serviceIpv4Cidr: "10.96.0.0/16"
    }]
    _roleArnRef = {
        name: _cluster_role_resource._name
    }
    _tags = _tags | {Name = _name}
    _version = _clusterVersion
    _vpcConfig = [{
        endpointPrivateAccess = _endpointPrivateAccess
        endpointPublicAccess = _endpointPublicAccess
        publicAccessCidrs = _publicAccessCidrs
        subnetIdSelector = {
            matchLabels = {
                "claim-name" = _networkId
                "subnet.type" = "private"
            }
        }
        # securityGroupIdSelector = {
        #     matchControllerRef = True
        #     matchLabels = {
        #         "claim-name" = _id
        #     }
        # }
        securityGroupIdRefs = [
            {name: _cluster_security_group._name}
        ]
    }]
}

_clusterauth_resource = clusterAuth.ClusterauthBlueprint {
    _name = "${_eks_cluster_resource._name}-auth"
    _labels = _labels
    _providerConfig = _providerConfig
    _writeConnectionSecretToRef = {
        name: _name
        namespace: "default"
    }
    _clusterNameSelector = {
        matchControllerRef = True
    }
    _region = _region
}

_cluster_nodegroup_resource = eksNodegroup.NodegroupBlueprint {
    _name = "cluster-nodegroup-${_id}"
    _labels = _labels
    _providerConfig = _providerConfig
    _amiType = _nodeGroupConfig.amiType
    _capacityType = _nodeGroupConfig.capacityType
    _clusterNameSelector = {
        matchControllerRef = True
    }
    _diskSize = _nodeGroupConfig.diskSize
    _forceUpdateVersion = True
    _instanceTypes = _nodeGroupConfig.instanceTypes
    _nodeRoleArnRef = {
        name = _node_role_resource._name
    }
    _region = _region
    _scalingConfig = [{
        desiredSize = _nodeGroupConfig.desiredSize
        maxSize = _nodeGroupConfig.maxSize
        minSize = _nodeGroupConfig.minSize
    }]
    _subnetIdSelector = {
        matchLabels = {
            "claim-name": _networkId
            "subnet.type": "private"
        }
    }
    if _nodeGroupConfig.updateConfig != None:
        _updateConfig = [{
            maxUnavailable = _nodeGroupConfig.updateConfig.maxUnavailable
            maxUnavailablePercentage = _nodeGroupConfig.updateConfig.maxUnavailablePercentage
        }]
}

_addons_vpc_cni_assume_role_policy = json.encode({
    "Version": "2012-10-17"
    "Statement": [{
        "Effect": "Allow"
        "Principal": {"Service": "pods.eks.amazonaws.com"}
        "Action": [
            "sts:AssumeRole"
            "sts:TagSession"
        ]
    }]
})

_cni_addon_config = [s for s in _addonsConfig if s.name == "vpc-cni"]
_cni_resources = []
_cni_role_resource_name = "role-addon-vpc-cni-cluster-${_id}"

if len(_cni_addon_config) > 0:
    _addons_vpc_cni_role_resource = role.RoleBlueprint {
        _name = _cni_role_resource_name
        _labels = _labels
        _providerConfig = _providerConfig
        _assumeRolePolicy = _addons_vpc_cni_assume_role_policy
        _description = "Role for VPC CNI addon"
        _tags = _tags | {Name = _name}
    }
    _cni_policy_attachment_resource = rolePolicyAttachment.RolepolicyattachmentBlueprint {
        _name = "vpc-cni-policy-attachment-${_id}".lower()
        _labels = _labels
        _providerConfig = _providerConfig
        _role = _cni_role_resource_name
        _policyArn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    }
    _cni_resources = [_addons_vpc_cni_role_resource, _cni_policy_attachment_resource]


_cluster_addons_resource = [eksAddon.AddonBlueprint {
    _name = "addon-${s.name}-${_id}"
    _labels = _labels
    _providerConfig = _providerConfig
    _addonName = s.name
    if "version" in s and s.version != None:
        _addonVersion = s.version
    _clusterNameSelector = {
        matchControllerRef = True
    }
    _region = _region
    if "resolveConflicts" in s and s.resolveConflicts != None:
        _resolveConflictsOnCreate = s.resolveConflicts
    _tags = _tags | {
        Name = "addon-${s.name}-${_id}"
    }
} for s in _addonsConfig]

_providerconfig_helm_resource = providerConfigHelm.ProviderconfigBlueprint {
    _name = "provider-helm-${_id}"
    _labels = _labels
    _annotations = {
        "krm.kcl.dev/ready": "True"
    }
    _credentials = {
        source = "Secret"
        secretRef = {
            namespace = _clusterauth_resource._writeConnectionSecretToRef.namespace
            name = _clusterauth_resource._writeConnectionSecretToRef.name
            key = "kubeconfig"
        }
    }
}

_providerconfig_kubernetes_resource = providerConfigKubernetes.ProviderconfigBlueprint {
    _name = "provider-kubernetes-${_id}"
    _labels = _labels
    _annotations = {
        "krm.kcl.dev/ready": "True"
    }
    _credentials = {
        source = "Secret"
        secretRef = {
            namespace = _clusterauth_resource._writeConnectionSecretToRef.namespace
            name = _clusterauth_resource._writeConnectionSecretToRef.name
            key = "kubeconfig"
        }
    }
}

observed_cluster_name = _eks_cluster_resource._name
oidc_issuer_url = option("params")?.ocds?[_eks_cluster_resource._name]?.Resource?.status?.atProvider?.identity?[0]?.oidc?[0]?.issuer or ""


# Create OpenIDConnectProvider only when we have a real OIDC URL
_oidc_resources = []
if oidc_issuer_url and oidc_issuer_url != "":
    _oidc_resource = openIDConnectProvider.OpenidconnectproviderBlueprint {
        _name = "openid-eks-${_id}"
        _providerConfig = _providerConfig
        _clientIdList = ["sts.amazonaws.com"]
        _thumbprintList = ["9e99a48a9960b14926bb7f3b02e22da2b0ab7280"]
        _url = oidc_issuer_url
        _tags = _tags | {Name = _name}
    }
    _oidc_resources = [_oidc_resource]

_issuer_url = oidc_issuer_url.replace("https://", "")


# Create security group for all clusters (hub, spoke, standalone)
_cluster_security_group = securityGroup.SecuritygroupBlueprint {
    _metadataName = "cluster-sg-${_id}"
    _name = _metadataName
    _labels = _labels
    _providerConfig = _providerConfig
    _description = "Security group for cluster ${_id}"
    _region = _region
    _vpcIdSelector = {
        matchLabels = {
            "claim-name" = _networkId
        }
    }
    _tags = _tags | {
        Name = "sg-cluster-${_id}"
        "kubernetes.io/cluster/eks-cluster-${_id}" = "owned"
        "cluster-type" = _clusterTopology.typeCluster
    }
}


_hub_resources = []
_spoke_resources = []
## Get extra resources
er = option("params").extraResources or {}
# dxr = {**oxr}
# _vpc_id = ""
# if er?.vpc and len(er.vpc) > 0:
#     _vpc_id = er.vpc[0]?.Resource?.status?.atProvider?.vpcId or ""


if _clusterTopology.typeCluster == "Hub":
    _argo_sa_names = ["argocd-application-controller", "argocd-server"]
    _argo_sa_subjects = ["system:serviceaccount:argocd:${s}" for s in _argo_sa_names]
    _argocd_hub_role_resource = role.RoleBlueprint {
        _name = "role-eks-cluster-hub-argo-${_id}"
        _labels = _labels | {
            "argocd-hub": _id
        }
        _providerConfig = _providerConfig
        _assumeRolePolicy = json.encode({
            "Version": "2012-10-17"
            "Statement": [{
                "Effect": "Allow"
                "Principal": {
                    "Federated": "arn:aws:iam::${_accountId}:oidc-provider/${_issuer_url}"
                }
                "Action": "sts:AssumeRoleWithWebIdentity"
                "Condition": {
                    "StringEquals": {
                        "${_issuer_url}:sub": _argo_sa_subjects
                        "${_issuer_url}:aud": "sts.amazonaws.com"
                    }
                }
            }]
        })
        _description = "Role for ArgoCD on the Hub cluster to manage Spokes"
        _tags = _tags | {
            Name = _name
        }
    }

    _argocd_hub_policy_document = json.encode({
        "Version": "2012-10-17"
        "Statement": [{
            "Effect": "Allow"
            "Action": "sts:AssumeRole"
            "Resource": "*"
        }]
    })

    _argocd_hub_policy_resource = policy.PolicyBlueprint {
        _name = "policy-hub-argocd-${_id}"
        _labels = _labels
        _providerConfig = _providerConfig
        _description = "Policy that allows the ArgoCD Hub role to assume Spoke roles."
        _policy = _argocd_hub_policy_document
        _tags = _tags | {
            Name = _name
        }
    }

    _argocd_hub_policy_attachment_resource = rolePolicyAttachment.RolepolicyattachmentBlueprint {
        _name = "policy-attachment-hub-argocd-${_id}"
        _labels = _labels
        _providerConfig = _providerConfig
        _role = _argocd_hub_role_resource._name

        _policyArn = "arn:aws:iam::${_accountId}:policy/${_argocd_hub_policy_resource._name}"
    }
    _hub_resources = [_argocd_hub_policy_resource, _argocd_hub_policy_attachment_resource, _argocd_hub_role_resource]

elif _clusterTopology.typeCluster == "Spoke":
    _hub_role_arn = ""
    if er?.roles and len(er.roles) > 0:
        _hub_role_arn = er.roles[0]?.Resource?.status?.atProvider?.arn or ""

        _argocd_spoke_role_resource = role.RoleBlueprint {
            _name = "role-eks-cluster-spoke-argo-${_id}"
            _labels = _labels | {
                "argocd-spoke": _id
            }
            _providerConfig = _providerConfig
            _assumeRolePolicy = json.encode({
                "Version": "2012-10-17"
                "Statement": [{
                    "Effect": "Allow"
                    "Principal": {
                        "AWS": _hub_role_arn
                    }
                    "Action": "sts:AssumeRole"
                }]
            })
            _description = "Role for ArgoCD on the Hub cluster to manage Spokes"
            _tags = _tags | {
                Name = _name
            }
        }

        _argocd_spoke_policy_attachment_resource = [rolePolicyAttachment.RolepolicyattachmentBlueprint {
            _name = "spoke-argocd-policy-${s.name}-${_id}".lower()
            _labels = _labels
            _providerConfig = _providerConfig
            _role = _argocd_spoke_role_resource._name
            _policyArn = s.arn
        } for s in [
            {name = "AmazonEKSClusterPolicy", arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"}
            {name = "AmazonEKSWorkerNodePolicy", arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"}
        ]]

        _spoke_server_url = _ocds?[_eks_cluster_resource._name]?.Resource?.status?.atProvider?.endpoint or ""
        _spoke_ca_data = _ocds?[_eks_cluster_resource._name]?.Resource?.status?.atProvider?.certificateAuthority?[0]?.data or ""
        _spoke_role_arn = _ocds?[_argocd_spoke_role_resource._name]?.Resource?.status?.atProvider?.arn or ""

        _spoke_config_json = {
            "tlsClientConfig": {
                "insecure": False
                "caData": _spoke_ca_data
            }
            "awsAuthConfig": {
                "clusterName": _eks_cluster_resource._name
                "roleARN": _spoke_role_arn
            }
        }
        _argocd_spoke_secret_resource = object.ObjectBlueprint {
            _name = "spoke-argocd-credentials-${_id}"
            _manifest = {
                apiVersion = "v1"
                kind = "Secret"
                metadata = {
                    name = _name
                    namespace = "argocd"
                    labels = {
                        "argocd.argoproj.io/secret-type": "cluster"
                        "environment": _id
                    }
                    annotations = {
                        # GitOps Bridge metadata
                        "addons_repo_url": "https://github.com/segoja7/demo_cncf_latam_summit"
                        "addons_repo_path": "example_basic_k8s"
                        "addons_repo_revision": "master"
                        "aws_region": _region
                        "cluster_name": _eks_cluster_resource._name
                    } | {
                        # Dynamic metadata for each addon role
                        "${s.name}_role_arn": "arn:aws:iam::${_accountId}:role/role-${s.name}-${_id}"
                        for s in _helmAddonsConfig if "serviceAccountName" in s and "customPolicy" in s
                    }
                }
                type = "Opaque"
                data = {
                    "name": base64.encode(_id)
                    "server": base64.encode(_spoke_server_url)
                    "config": base64.encode(json.encode(_spoke_config_json))
                }
            }
            _providerConfig = "provider-kubernetes-${_clusterTopology.hubId}"
        }
        _argocd_spoke_accessentry_resource = accessEntry.AccessentryBlueprint {
            _name = "spoke-argocd-accessentry-${_id}"
            _clusterNameSelector = {
                matchControllerRef = True
            }
            _type = "STANDARD"
            _principalArn = _spoke_role_arn
            _tags = _tags | {
                Name = _name
            }
            _providerConfig = _providerConfig
            _region = _region
        }

        _argocd_spoke_accesspolicyassociation_resource = accessPolicyAssociation.AccesspolicyassociationBlueprint {
            _name = "spoke-argocd-accesspolicyassociation-${_id}"
            _accessScope = {
                type: "cluster"
            }

            _clusterNameSelector = {
                matchControllerRef = True
            }
            _policyArn: "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
            _principalArn = _spoke_role_arn
            _providerConfig = _providerConfig
            _region = _region
        }


        # Security group rule for ArgoCD access from hub (only if hub SG is available)
        _spoke_sg_rules = []
        _hub_securityGroupId = ""

        if er?.clusters and len(er.clusters) > 0:
            _hub_securityGroupId = er.clusters[0].Resource?.status?.atProvider?.vpcConfig?.clusterSecurityGroupId or ""

        if _hub_securityGroupId != "":
            _spoke_sg_rule_https = securityGroupRule.SecuritygroupruleBlueprint {
                _metadataName = "spoke-sg-rule-https-${_id}"
                _labels = _labels
                _providerConfig = _providerConfig
                _type = "ingress"
                _fromPort = 443
                _toPort = 443
                _protocol = "tcp"
                _region = _region
                _securityGroupIdRef = {
                    name = _cluster_security_group._metadataName
                }
                _sourceSecurityGroupId = _hub_securityGroupId
                _description = "Allow HTTPS from hub cluster security group for ArgoCD access"
            }
            _spoke_sg_rules = [_spoke_sg_rule_https]

        _spoke_resources = [_argocd_spoke_role_resource] + _argocd_spoke_policy_attachment_resource + [_argocd_spoke_secret_resource, _argocd_spoke_accessentry_resource, _argocd_spoke_accesspolicyassociation_resource] + _spoke_sg_rules

_argo_resources = []
if _enableArgo == True:
    _release_helm_resource = release.ReleaseBlueprint {
        _name = "argocd"
        _labels = _labels
        _providerConfig = _providerconfig_helm_resource._name
        _chart = {
            name = "argo-cd"
            repository = "https://argoproj.github.io/argo-helm"
            version = "7.9.0"
        }
        # _createNamespace = False
        _namespace = "argocd"
        _values = {
            "global": {
                "domain": "argo.segoja7.com"
            }
            "controller": {
                "serviceAccount": {
                    "annotations": {
                        "eks.amazonaws.com/role-arn": "arn:aws:iam::${_accountId}:role/${_argocd_hub_role_resource._name}"
                    }
                }
            }
            "server": {
                "serviceAccount": {
                    "annotations": {
                        "eks.amazonaws.com/role-arn": "arn:aws:iam::${_accountId}:role/${_argocd_hub_role_resource._name}"
                    }
                }
                "ingress": {
                    "enabled": False
                }
            }
            "configs": {
                "params": {
                    "server.insecure": True
                }
                # "cm": {
                #     "accounts.provider-argocd": "apiKey"
                # }
                # "rbac": {
                #     "policy.csv": "g, provider-argocd, role:admin"
                # }
            }
            "repoServer": {
                "volumes": [
                    {
                        "name": "kcl-binary"
                        "emptyDir": {}
                    }
                    {
                        "name": "kcl-plugin-config"
                        "configMap": {
                            "name": "kcl-plugin"
                        }
                    }
                ]
                "initContainers": [
                    {
                        "name": "install-kcl"
                        "image": "kcllang/kcl:v0.11.3"
                        "command": ["sh", "-c", "cp /usr/local/bin/kcl /kcl-binary/"]
                        "volumeMounts": [
                            {
                                "name": "kcl-binary"
                                "mountPath": "/kcl-binary"
                            }
                        ]
                    }
                ]
                "extraContainers": [
                    {
                        "name": "kcl-plugin"
                        "command": ["/var/run/argocd/argocd-cmp-server"]
                        "image": "quay.io/argoproj/argocd:v2.14.11"
                        "securityContext": {
                            "runAsNonRoot": True
                            "runAsUser": 999
                        }
                        "volumeMounts": [
                            {
                                "mountPath": "/var/run/argocd"
                                "name": "var-files"
                            }
                            {
                                "mountPath": "/home/argocd/cmp-server/plugins"
                                "name": "plugins"
                            }
                            {
                                "mountPath": "/usr/local/bin/kcl"
                                "name": "kcl-binary"
                                "subPath": "kcl"
                            }
                            {
                                "mountPath": "/home/argocd/cmp-server/config/plugin.yaml"
                                "name": "kcl-plugin-config"
                                "subPath": "plugin.yaml"
                            }
                        ]
                    }
                ]
            }
        }
    }

    _object_argocd_ingress = object.ObjectBlueprint {
        _name = "argocd-ingress"
        _labels = _labels
        _manifest = {
            apiVersion = "networking.k8s.io/v1"
            kind = "Ingress"
            metadata = {
                name = "argocd-server-ingress"
                namespace = "argocd"
                annotations = {
                    "nginx.ingress.kubernetes.io/force-ssl-redirect": "false"
                }
            }
            spec = {
                ingressClassName = "nginx"
                rules = [
                    {
                        #host = "argo.segoja7.com"
                        http = {
                            paths = [
                                {
                                    path = "/"
                                    pathType = "Prefix"
                                    backend = {
                                        service = {
                                            name = "argocd-server"
                                            port = {
                                                name = "https"
                                            }
                                        }
                                    }
                                }
                            ]
                        }
                    }
                ]
                # tls = [
                #     {
                #         hosts = [
                #             "argo.segoja7.com"
                #         ]
                #         secretName = _certificateSecretName
                #     }
                # ]
            }
        }
        _providerConfig = _providerconfig_kubernetes_resource._name
    }

    _object_argo_cm_resource = object.ObjectBlueprint {
        _name = "kcl-plugin-configmap"
        _labels = _labels
        _manifest = {
            apiVersion = "v1"
            kind = "ConfigMap"
            metadata = {
                name = "kcl-plugin"
                namespace = "argocd"
            }
            data = {
                "plugin.yaml": """apiVersion: argoproj.io/v1alpha1
kind: ConfigManagementPlugin
metadata:
  name: kcl
spec:
  version: v1.0
  generate:
    command: ["sh", "-c"]
    args:
    - |
      export KCL_CACHE_PATH=/tmp
      export KCL_PKG_PATH=/tmp
      tempfile=$(mktemp)
      kcl run -q -o $tempfile > /dev/null 2>&1
      error=$?
      if [ $error -eq 0 ]; then
        cat $tempfile
        rm $tempfile
      fi
      exit $error
"""
            }
        }
        _providerConfig = _providerconfig_kubernetes_resource._name
    }

    _argo_resources = [_release_helm_resource, _object_argocd_ingress, _object_argo_cm_resource]


extraResourcesRequest = {
    "apiVersion": "meta.krm.kcl.dev/v1alpha1"
    "kind": "ExtraResources"
    "requirements": {
        # "vpc": {
        #     "apiVersion": "ec2.aws.crossplane.io/v1beta1"
        #     "kind": "VPC"
        #     "matchLabels": {
        #         "claim-name": _networkId
        #     }
        # }
        "roles": {
            "apiVersion": "iam.aws.upbound.io/v1beta1"
            "kind": "Role"
            "matchLabels": {
                "argocd-hub": _clusterTopology.hubId
            }
        }
        "clusters": {
            "apiVersion": "eks.aws.upbound.io/v1beta2"
            "kind": "Cluster"
            "matchLabels": {
                "argocd-hub": _clusterTopology.hubId
            }
        }
        "securitygroups": {
            "apiVersion": "ec2.aws.upbound.io/v1beta1"
            "kind": "SecurityGroup"
            "matchLabels": {
                "claim-name": _clusterTopology.hubId
            }
        }
    }
}


_helm_addon_resources = []
if _helmAddonsConfig and len(_helmAddonsConfig) > 0 and oidc_issuer_url != "":
    _issuer_url = oidc_issuer_url.replace("https://", "")

    # Create IAM infrastructure if createAddonsInfrastructure = true
    _policies_resources = []
    _roles_resources = []
    _policy_attachments_resources = []
    _namespace_resources = []
    _sa_resources = []

    if _createAddonsInfrastructure == True:
        _policies_resources = [policy.PolicyBlueprint {
            _name = "policy-${s.name}-${_id}"
            _providerConfig = _providerConfig
            _description = "Policy for ${s.name}"
            _policy = s.customPolicy
            _tags = _tags | {Name = _name}
        } for s in _helmAddonsConfig if "serviceAccountName" in s and "customPolicy" in s]

        _roles_resources = [role.RoleBlueprint {
            _name = "role-${s.name}-${_id}"
            _providerConfig = _providerConfig
            _assumeRolePolicy = json.encode({
                "Version": "2012-10-17"
                "Statement": [{
                    "Effect": "Allow"
                    "Principal": {
                        "Federated": "arn:aws:iam::${_accountId}:oidc-provider/${_issuer_url}"
                    }
                    "Action": "sts:AssumeRoleWithWebIdentity"
                    "Condition": {
                        "StringEquals": {
                            "${_issuer_url}:sub": "system:serviceaccount:${s.namespace}:${s.serviceAccountName}"
                            "${_issuer_url}:aud": "sts.amazonaws.com"
                        }
                    }
                }]
            })
            _description = "IRSA role for ${s.name}"
            _tags = _tags | {Name = _name}
        } for s in _helmAddonsConfig if "serviceAccountName" in s and "customPolicy" in s]

        _policy_attachments_resources = [rolePolicyAttachment.RolepolicyattachmentBlueprint {
            _name = "policy-attachment-${s.name}-${_id}"
            _providerConfig = _providerConfig
            _role = "role-${s.name}-${_id}"
            _policyArn = "arn:aws:iam::${_accountId}:policy/policy-${s.name}-${_id}"
        } for s in _helmAddonsConfig if "serviceAccountName" in s and "customPolicy" in s]

        # namespaces
        _namespace_resources = [object.ObjectBlueprint {
            _name = "ns-${s.namespace}-${_id}"
            _labels = _labels
            _manifest = {
                apiVersion = "v1"
                kind = "Namespace"
                metadata = {
                    name = s.namespace
                }
            }
            _providerConfig = _providerconfig_kubernetes_resource._name
        } for s in _helmAddonsConfig if "serviceAccountName" in s and "customPolicy" in s and s.namespace != "default"]

        # Create Service Accounts for GitOps Bridge
        _sa_resources = [object.ObjectBlueprint {
            _name = "sa-${s.name}-${_id}"
            _labels = _labels
            _manifest = {
                apiVersion = "v1"
                kind = "ServiceAccount"
                metadata = {
                    name = s.serviceAccountName
                    namespace = s.namespace
                    annotations = {
                        "eks.amazonaws.com/role-arn" = "arn:aws:iam::${_accountId}:role/role-${s.name}-${_id}"
                    }
                }
            }
            _providerConfig = _providerconfig_kubernetes_resource._name
        } for s in _helmAddonsConfig if "serviceAccountName" in s and "customPolicy" in s]

    # Create Helm releases if createHelmReleases = true
    _releases_resources = []
    if _createHelmReleases == True:
        _releases_resources = [release.ReleaseBlueprint {
            _name = "${s.name}"
            _labels = _labels
            _providerConfig = _providerconfig_helm_resource._name
            _chart = {
                name = s.chart
                repository = s.repository
                version = s.version
            }
            _namespace = s.namespace
            _values = (s.values or {}) | ({
                # Specific Configuration for AWS Load Balancer Controller
                "clusterName": _eks_cluster_resource._name
                "region": _region
                "serviceAccount": {
                    "create": False if _createAddonsInfrastructure == True else True
                    "name": s.serviceAccountName
                    "annotations": {
                        "eks.amazonaws.com/role-arn": "arn:aws:iam::${_accountId}:role/role-${s.name}-${_id}"
                    }
                }
            } if s.name == "aws-load-balancer-controller" else {
                # Configuration for other charts with service account
                "serviceAccount": {
                    "create": False if _createAddonsInfrastructure == True else True
                    "name": s.serviceAccountName
                    "annotations": {
                        "eks.amazonaws.com/role-arn": "arn:aws:iam::${_accountId}:role/role-${s.name}-${_id}"
                    }
                }
            } if "serviceAccountName" in s else {})
        } for s in _helmAddonsConfig]

    _helm_addon_resources = _policies_resources + _roles_resources + _policy_attachments_resources + _namespace_resources + _sa_resources + _releases_resources

# #create certificate only when cert-manager is ready.
# #TODO: this line assume that release have cert-manager name
# observed_cert_manager_release = "cert-manager"
# cert_manager_release_conditions = option("params")?.ocds?[observed_cert_manager_release]?.Resource?.status?.conditions
# cert_manager_release = cert_manager_release_conditions[0].status if cert_manager_release_conditions and len(cert_manager_release_conditions) > 0 else ""

# # Create certificates only when we have a real OIDC URL
# _cert_manager_resources = []
# if cert_manager_release == "True":
#     _certificate_resource = object.ObjectBlueprint {
#         _name = "cert-manager-certificate-${_id}"
#         _labels = _labels
#         _manifest = {
#             apiVersion = "cert-manager.io/v1"
#             kind = "Certificate"
#             metadata = {
#                 name = "certificate-${_id}"
#                 namespace = "cert-manager"
#             }
#             spec = {
#                 dnsNames = _domainNames
#                 secretName = _certificateSecretName
#                 secretTemplate = {
#                     annotations = {
#                         "reflector.v1.k8s.emberstack.com/reflection-allowed": "true"
#                         "reflector.v1.k8s.emberstack.com/reflection-auto-enabled": "true"
#                         "reflector.v1.k8s.emberstack.com/reflection-auto-namespaces": "argocd,keycloak"
#                     }
#                 }
#                 revisionHistoryLimit = 1
#                 issuerRef = {
#                     name = "clusterissuer-${_id}"
#                     kind = "ClusterIssuer"
#                     group = "cert-manager.io"
#                 }
#             }
#         }
#         _providerConfig = _providerconfig_kubernetes_resource._name
#     }
#     _clusterissuer_resource = object.ObjectBlueprint {
#         _name = "cert-manager-clusterissuer-${_id}"
#         _labels = _labels
#         _manifest = {
#             apiVersion = "cert-manager.io/v1"
#             kind = "ClusterIssuer"
#             metadata = {
#                 name = "clusterissuer-${_id}"
#             }
#             spec = {
#                 acme = {
#                     server = "https://acme-staging-v02.api.letsencrypt.org/directory"
#                     privateKeySecretRef = {
#                         name = "${_id}-key"
#                     }
#                     solvers = [
#                         {
#                             dns01 = {
#                                 route53 = {
#                                     hostedZoneID = _hostedZoneID
#                                 }
#                             }
#                         }
#                     ]
#                 }
#             }
#         }
#         _providerConfig = _providerconfig_kubernetes_resource._name
#     }
#     _cert_manager_resources = [_certificate_resource, _clusterissuer_resource]



items = [
    extraResourcesRequest,
    _cluster_role_resource,
    _node_role_resource,
    _eks_cluster_resource,
    _clusterauth_resource,
   _cluster_nodegroup_resource
] + _cluster_policy_attachment_resource + _node_policy_attachments_resource + _kms_resources + _cni_resources + _cluster_addons_resource + [
    _providerconfig_helm_resource
    _providerconfig_kubernetes_resource,
    _cluster_security_group
] + _oidc_resources + _hub_resources + _spoke_resources + _argo_resources + _helm_addon_resources

# + _cert_manager_resources

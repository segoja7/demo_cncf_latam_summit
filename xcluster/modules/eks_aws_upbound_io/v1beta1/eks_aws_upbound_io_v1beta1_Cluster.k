"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Cluster:
    """
    Cluster is the Schema for the Clusters API. Manages an EKS Cluster

    Attributes
    ----------
    apiVersion : str, optional
        APIVersion defines the versioned schema of this representation of an object.
        Servers should convert recognized schemas to the latest internal value, and
        may reject unrecognized values.
        More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, optional
        Kind is a string value representing the REST resource this object represents.
        Servers may infer this from the endpoint the client submits requests to.
        Cannot be updated.
        In CamelCase.
        More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : any, optional
        No description available.
    spec : ClusterSpec, required
        ClusterSpec defines the desired state of Cluster
    status : ClusterStatus, optional
        ClusterStatus defines the observed state of Cluster.
    """
    apiVersion : str = "eks.aws.upbound.io/v1beta1"
    kind : str = "Cluster"
    metadata? : any
    spec : ClusterSpec
    status? : ClusterStatus

schema ClusterSpec:
    """
    ClusterSpec defines the desired state of Cluster

    Attributes
    ----------
    deletionPolicy : "Orphan" | "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external
        when this managed resource is deleted - either "Delete" or "Orphan" the
        external resource.
        This field is planned to be deprecated in favor of the ManagementPolicies
        field in a future release. Currently, both could be set independently and
        non-default values would be honored if the feature flag is enabled.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : ClusterspecForprovider, required
        No description available.
    initProvider : ClusterspecInitprovider, optional
        THIS IS A BETA FIELD. It will be honored
        unless the Management Policies feature flag is disabled.
        InitProvider holds the same fields as ForProvider, with the exception
        of Identifier and other resource reference fields. The fields that are
        in InitProvider are merged into ForProvider when the resource is created.
        The same fields are also added to the terraform ignore_changes hook, to
        avoid updating them after creation. This is useful for fields that are
        required on creation, but we do not desire to update them after creation,
        for example because of an external controller is managing them, like an
        autoscaler.
    managementPolicies : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"], optional
        THIS IS A BETA FIELD. It is on by default but can be opted out
        through a Crossplane feature flag.
        ManagementPolicies specify the array of actions Crossplane is allowed to
        take on the managed and external resources.
        This field is planned to replace the DeletionPolicy field in a future
        release. Currently, both could be set independently and non-default
        values would be honored if the feature flag is enabled. If both are
        custom, the DeletionPolicy field will be ignored.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
        and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : ClusterspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    writeConnectionSecretToRef : ClusterspecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    """
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : ClusterspecForprovider
    initProvider? : ClusterspecInitprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : ClusterspecProviderconfigref
    writeConnectionSecretToRef? : ClusterspecWriteconnectionsecrettoref

schema ClusterspecForprovider:
    """
    ClusterspecForprovider schema.

    Attributes
    ----------
    accessConfig : [ClusterspecforproviderAccessconfigitem], optional
        Configuration block for the access config associated with your cluster, see Amazon EKS Access Entries. Detailed below.
    bootstrapSelfManagedAddons : bool, optional
        Install default unmanaged add-ons, such as aws-cni, kube-proxy, and CoreDNS during cluster creation. If false, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to true.
    computeConfig : [ClusterspecforproviderComputeconfigitem], optional
        Configuration block with compute configuration for EKS Auto Mode. Detailed below.
    deletionProtection : bool, optional
        Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: false.
    enabledClusterLogTypes : [str], optional
        List of the desired control plane logging to enable. For more information, see Amazon EKS Control Plane Logging.
    encryptionConfig : [ClusterspecforproviderEncryptionconfigitem], optional
        Configuration block with encryption configuration for the cluster. Detailed below.
    forceUpdateVersion : bool, optional
        Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
    kubernetesNetworkConfig : [ClusterspecforproviderKubernetesnetworkconfigitem], optional
        Configuration block with kubernetes network configuration for the cluster. Detailed below.
    outpostConfig : [ClusterspecforproviderOutpostconfigitem], optional
        Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
    region : str, required
        Region where this resource will be managed. Defaults to the Region set in the provider configuration.
        Region is the region you'd like your resource to be created in.
    remoteNetworkConfig : [ClusterspecforproviderRemotenetworkconfigitem], optional
        Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
    roleArn : str, optional
        ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding depends_on if using the aws_iam_role_policy resource or aws_iam_role_policy_attachment resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
    roleArnRef : ClusterspecforproviderRolearnref, optional
        Reference to a Role in iam to populate roleArn.
    roleArnSelector : ClusterspecforproviderRolearnselector, optional
        Selector for a Role in iam to populate roleArn.
    storageConfig : [ClusterspecforproviderStorageconfigitem], optional
        Configuration block with storage configuration for EKS Auto Mode. Detailed below.
    tags : {str:str}, optional
        Key-value map of resource tags.
    upgradePolicy : [ClusterspecforproviderUpgradepolicyitem], optional
        Configuration block for the support policy to use for the cluster.  See upgrade_policy for details.
    version : str, optional
        Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
    vpcConfig : [ClusterspecforproviderVpcconfigitem], optional
        Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
    zonalShiftConfig : [ClusterspecforproviderZonalshiftconfigitem], optional
        Configuration block with zonal shift configuration for the cluster. Detailed below.
    """
    accessConfig? : [ClusterspecforproviderAccessconfigitem]
    bootstrapSelfManagedAddons? : bool
    computeConfig? : [ClusterspecforproviderComputeconfigitem]
    deletionProtection? : bool
    enabledClusterLogTypes? : [str]
    encryptionConfig? : [ClusterspecforproviderEncryptionconfigitem]
    forceUpdateVersion? : bool
    kubernetesNetworkConfig? : [ClusterspecforproviderKubernetesnetworkconfigitem]
    outpostConfig? : [ClusterspecforproviderOutpostconfigitem]
    region : str
    remoteNetworkConfig? : [ClusterspecforproviderRemotenetworkconfigitem]
    roleArn? : str
    roleArnRef? : ClusterspecforproviderRolearnref
    roleArnSelector? : ClusterspecforproviderRolearnselector
    storageConfig? : [ClusterspecforproviderStorageconfigitem]
    tags? : {str:str}
    upgradePolicy? : [ClusterspecforproviderUpgradepolicyitem]
    version? : str
    vpcConfig? : [ClusterspecforproviderVpcconfigitem]
    zonalShiftConfig? : [ClusterspecforproviderZonalshiftconfigitem]

schema ClusterspecforproviderAccessconfigitem:
    """
    ClusterspecforproviderAccessconfigitem schema.

    Attributes
    ----------
    authenticationMode : str, optional
        The authentication mode for the cluster. Valid values are CONFIG_MAP, API or API_AND_CONFIG_MAP
    bootstrapClusterCreatorAdminPermissions : bool, optional
        Whether or not to bootstrap the access config values to the cluster. Default is true.
    """
    authenticationMode? : str
    bootstrapClusterCreatorAdminPermissions? : bool

schema ClusterspecforproviderComputeconfigitem:
    """
    ClusterspecforproviderComputeconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Request to enable or disable the compute capability on your EKS Auto Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed Instances in your Amazon Web Services account.
    nodePools : [str], optional
        Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are general-purpose and system.
    nodeRoleArn : str, optional
        The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled..
    """
    enabled? : bool
    nodePools? : [str]
    nodeRoleArn? : str

schema ClusterspecforproviderEncryptionconfigitem:
    """
    ClusterspecforproviderEncryptionconfigitem schema.

    Attributes
    ----------
    provider : [ClusterspecforproviderencryptionconfigitemProvideritem], optional
        Configuration block with provider for encryption. Detailed below.
    resources : [str], optional
        List of strings with resources to be encrypted. Valid values: secrets.
    """
    provider? : [ClusterspecforproviderencryptionconfigitemProvideritem]
    resources? : [str]

schema ClusterspecforproviderencryptionconfigitemProvideritem:
    """
    ClusterspecforproviderencryptionconfigitemProvideritem schema.

    Attributes
    ----------
    keyArn : str, optional
        ARN of the Key Management Service (KMS) customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see Allowing Users in Other Accounts to Use a CMK in the AWS Key Management Service Developer Guide.
    """
    keyArn? : str

schema ClusterspecforproviderKubernetesnetworkconfigitem:
    """
    ClusterspecforproviderKubernetesnetworkconfigitem schema.

    Attributes
    ----------
    elasticLoadBalancing : [ClusterspecforproviderkubernetesnetworkconfigitemElasticloadbalancingitem], optional
        Configuration block with elastic load balancing configuration for the cluster. Detailed below.
    ipFamily : str, optional
        The IP family used to assign Kubernetes pod and service addresses. Valid values are ipv4 (default) and ipv6. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.
    serviceIpv4Cidr : str, optional
        The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:
    """
    elasticLoadBalancing? : [ClusterspecforproviderkubernetesnetworkconfigitemElasticloadbalancingitem]
    ipFamily? : str
    serviceIpv4Cidr? : str

schema ClusterspecforproviderkubernetesnetworkconfigitemElasticloadbalancingitem:
    """
    ClusterspecforproviderkubernetesnetworkconfigitemElasticloadbalancingitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Whether zonal shift is enabled for the cluster.
    """
    enabled? : bool

schema ClusterspecforproviderOutpostconfigitem:
    """
    ClusterspecforproviderOutpostconfigitem schema.

    Attributes
    ----------
    controlPlaneInstanceType : str, optional
        The Amazon EC2 instance type that you want to use for your local Amazon EKS cluster on Outposts. The instance type that you specify is used for all Kubernetes control plane instances. The instance type can't be changed after cluster creation. Choose an instance type based on the number of nodes that your cluster will have. If your cluster will have:
    controlPlanePlacement : [ClusterspecforprovideroutpostconfigitemControlplaneplacementitem], optional
        An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
        The control_plane_placement configuration block supports the following arguments:
    outpostArns : [str], optional
        The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. This argument is a list of arns, but only a single Outpost ARN is supported currently.
    """
    controlPlaneInstanceType? : str
    controlPlanePlacement? : [ClusterspecforprovideroutpostconfigitemControlplaneplacementitem]
    outpostArns? : [str]

schema ClusterspecforprovideroutpostconfigitemControlplaneplacementitem:
    """
    ClusterspecforprovideroutpostconfigitemControlplaneplacementitem schema.

    Attributes
    ----------
    groupName : str, optional
        The name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
    """
    groupName? : str

schema ClusterspecforproviderRemotenetworkconfigitem:
    """
    ClusterspecforproviderRemotenetworkconfigitem schema.

    Attributes
    ----------
    remoteNodeNetworks : [ClusterspecforproviderremotenetworkconfigitemRemotenodenetworksitem], optional
        Configuration block with remote node network configuration for EKS Hybrid Nodes. Detailed below.
    remotePodNetworks : [ClusterspecforproviderremotenetworkconfigitemRemotepodnetworksitem], optional
        Configuration block with remote pod network configuration for EKS Hybrid Nodes. Detailed below.
    """
    remoteNodeNetworks? : [ClusterspecforproviderremotenetworkconfigitemRemotenodenetworksitem]
    remotePodNetworks? : [ClusterspecforproviderremotenetworkconfigitemRemotepodnetworksitem]

schema ClusterspecforproviderremotenetworkconfigitemRemotenodenetworksitem:
    """
    ClusterspecforproviderremotenetworkconfigitemRemotenodenetworksitem schema.

    Attributes
    ----------
    cidrs : [str], optional
        List of network CIDRs that can contain hybrid nodes.
    """
    cidrs? : [str]

schema ClusterspecforproviderremotenetworkconfigitemRemotepodnetworksitem:
    """
    ClusterspecforproviderremotenetworkconfigitemRemotepodnetworksitem schema.

    Attributes
    ----------
    cidrs : [str], optional
        List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
    """
    cidrs? : [str]

schema ClusterspecforproviderRolearnref:
    """
    Reference to a Role in iam to populate roleArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecforproviderrolearnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecforproviderrolearnrefPolicy

schema ClusterspecforproviderrolearnrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecforproviderRolearnselector:
    """
    Selector for a Role in iam to populate roleArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecforproviderrolearnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecforproviderrolearnselectorPolicy

schema ClusterspecforproviderrolearnselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecforproviderStorageconfigitem:
    """
    ClusterspecforproviderStorageconfigitem schema.

    Attributes
    ----------
    blockStorage : [ClusterspecforproviderstorageconfigitemBlockstorageitem], optional
        Configuration block with block storage configuration for the cluster. Detailed below.
    """
    blockStorage? : [ClusterspecforproviderstorageconfigitemBlockstorageitem]

schema ClusterspecforproviderstorageconfigitemBlockstorageitem:
    """
    ClusterspecforproviderstorageconfigitemBlockstorageitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Indicates if the block storage capability is enabled on your EKS Auto Mode cluster. If the block storage capability is enabled, EKS Auto Mode will create and delete block storage volumes in your Amazon Web Services account.
    """
    enabled? : bool

schema ClusterspecforproviderUpgradepolicyitem:
    """
    ClusterspecforproviderUpgradepolicyitem schema.

    Attributes
    ----------
    supportType : str, optional
        Support type to use for the cluster. If the cluster is set to EXTENDED, it will enter extended support at the end of standard support. If the cluster is set to STANDARD, it will be automatically upgraded at the end of standard support. Valid values are EXTENDED, STANDARD
    """
    supportType? : str

schema ClusterspecforproviderVpcconfigitem:
    """
    ClusterspecforproviderVpcconfigitem schema.

    Attributes
    ----------
    endpointPrivateAccess : bool, optional
        Whether the Amazon EKS private API server endpoint is enabled. Default is false.
    endpointPublicAccess : bool, optional
        Whether the Amazon EKS public API server endpoint is enabled. Default is true.
    publicAccessCidrs : [str], optional
        List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with 0.0.0.0/0.
    securityGroupIdRefs : [ClusterspecforprovidervpcconfigitemSecuritygroupidrefsitem], optional
        References to SecurityGroup in ec2 to populate securityGroupIds.
    securityGroupIdSelector : ClusterspecforprovidervpcconfigitemSecuritygroupidselector, optional
        Selector for a list of SecurityGroup in ec2 to populate securityGroupIds.
    securityGroupIds : [str], optional
        List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
    subnetIdRefs : [ClusterspecforprovidervpcconfigitemSubnetidrefsitem], optional
        References to Subnet in ec2 to populate subnetIds.
    subnetIdSelector : ClusterspecforprovidervpcconfigitemSubnetidselector, optional
        Selector for a list of Subnet in ec2 to populate subnetIds.
    subnetIds : [str], optional
        List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
    """
    endpointPrivateAccess? : bool
    endpointPublicAccess? : bool
    publicAccessCidrs? : [str]
    securityGroupIdRefs? : [ClusterspecforprovidervpcconfigitemSecuritygroupidrefsitem]
    securityGroupIdSelector? : ClusterspecforprovidervpcconfigitemSecuritygroupidselector
    securityGroupIds? : [str]
    subnetIdRefs? : [ClusterspecforprovidervpcconfigitemSubnetidrefsitem]
    subnetIdSelector? : ClusterspecforprovidervpcconfigitemSubnetidselector
    subnetIds? : [str]

schema ClusterspecforprovidervpcconfigitemSecuritygroupidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecforprovidervpcconfigitemsecuritygroupidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecforprovidervpcconfigitemsecuritygroupidrefsitemPolicy

schema ClusterspecforprovidervpcconfigitemsecuritygroupidrefsitemPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecforprovidervpcconfigitemSecuritygroupidselector:
    """
    Selector for a list of SecurityGroup in ec2 to populate securityGroupIds.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecforprovidervpcconfigitemsecuritygroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecforprovidervpcconfigitemsecuritygroupidselectorPolicy

schema ClusterspecforprovidervpcconfigitemsecuritygroupidselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecforprovidervpcconfigitemSubnetidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecforprovidervpcconfigitemsubnetidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecforprovidervpcconfigitemsubnetidrefsitemPolicy

schema ClusterspecforprovidervpcconfigitemsubnetidrefsitemPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecforprovidervpcconfigitemSubnetidselector:
    """
    Selector for a list of Subnet in ec2 to populate subnetIds.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecforprovidervpcconfigitemsubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecforprovidervpcconfigitemsubnetidselectorPolicy

schema ClusterspecforprovidervpcconfigitemsubnetidselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecforproviderZonalshiftconfigitem:
    """
    ClusterspecforproviderZonalshiftconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Whether zonal shift is enabled for the cluster.
    """
    enabled? : bool

schema ClusterspecInitprovider:
    """
    THIS IS A BETA FIELD. It will be honored
    unless the Management Policies feature flag is disabled.
    InitProvider holds the same fields as ForProvider, with the exception
    of Identifier and other resource reference fields. The fields that are
    in InitProvider are merged into ForProvider when the resource is created.
    The same fields are also added to the terraform ignore_changes hook, to
    avoid updating them after creation. This is useful for fields that are
    required on creation, but we do not desire to update them after creation,
    for example because of an external controller is managing them, like an
    autoscaler.

    Attributes
    ----------
    accessConfig : [ClusterspecinitproviderAccessconfigitem], optional
        Configuration block for the access config associated with your cluster, see Amazon EKS Access Entries. Detailed below.
    bootstrapSelfManagedAddons : bool, optional
        Install default unmanaged add-ons, such as aws-cni, kube-proxy, and CoreDNS during cluster creation. If false, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to true.
    computeConfig : [ClusterspecinitproviderComputeconfigitem], optional
        Configuration block with compute configuration for EKS Auto Mode. Detailed below.
    deletionProtection : bool, optional
        Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: false.
    enabledClusterLogTypes : [str], optional
        List of the desired control plane logging to enable. For more information, see Amazon EKS Control Plane Logging.
    encryptionConfig : [ClusterspecinitproviderEncryptionconfigitem], optional
        Configuration block with encryption configuration for the cluster. Detailed below.
    forceUpdateVersion : bool, optional
        Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
    kubernetesNetworkConfig : [ClusterspecinitproviderKubernetesnetworkconfigitem], optional
        Configuration block with kubernetes network configuration for the cluster. Detailed below.
    outpostConfig : [ClusterspecinitproviderOutpostconfigitem], optional
        Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
    remoteNetworkConfig : [ClusterspecinitproviderRemotenetworkconfigitem], optional
        Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
    roleArn : str, optional
        ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding depends_on if using the aws_iam_role_policy resource or aws_iam_role_policy_attachment resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
    roleArnRef : ClusterspecinitproviderRolearnref, optional
        Reference to a Role in iam to populate roleArn.
    roleArnSelector : ClusterspecinitproviderRolearnselector, optional
        Selector for a Role in iam to populate roleArn.
    storageConfig : [ClusterspecinitproviderStorageconfigitem], optional
        Configuration block with storage configuration for EKS Auto Mode. Detailed below.
    tags : {str:str}, optional
        Key-value map of resource tags.
    upgradePolicy : [ClusterspecinitproviderUpgradepolicyitem], optional
        Configuration block for the support policy to use for the cluster.  See upgrade_policy for details.
    version : str, optional
        Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
    vpcConfig : [ClusterspecinitproviderVpcconfigitem], optional
        Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
    zonalShiftConfig : [ClusterspecinitproviderZonalshiftconfigitem], optional
        Configuration block with zonal shift configuration for the cluster. Detailed below.
    """
    accessConfig? : [ClusterspecinitproviderAccessconfigitem]
    bootstrapSelfManagedAddons? : bool
    computeConfig? : [ClusterspecinitproviderComputeconfigitem]
    deletionProtection? : bool
    enabledClusterLogTypes? : [str]
    encryptionConfig? : [ClusterspecinitproviderEncryptionconfigitem]
    forceUpdateVersion? : bool
    kubernetesNetworkConfig? : [ClusterspecinitproviderKubernetesnetworkconfigitem]
    outpostConfig? : [ClusterspecinitproviderOutpostconfigitem]
    remoteNetworkConfig? : [ClusterspecinitproviderRemotenetworkconfigitem]
    roleArn? : str
    roleArnRef? : ClusterspecinitproviderRolearnref
    roleArnSelector? : ClusterspecinitproviderRolearnselector
    storageConfig? : [ClusterspecinitproviderStorageconfigitem]
    tags? : {str:str}
    upgradePolicy? : [ClusterspecinitproviderUpgradepolicyitem]
    version? : str
    vpcConfig? : [ClusterspecinitproviderVpcconfigitem]
    zonalShiftConfig? : [ClusterspecinitproviderZonalshiftconfigitem]

schema ClusterspecinitproviderAccessconfigitem:
    """
    ClusterspecinitproviderAccessconfigitem schema.

    Attributes
    ----------
    authenticationMode : str, optional
        The authentication mode for the cluster. Valid values are CONFIG_MAP, API or API_AND_CONFIG_MAP
    bootstrapClusterCreatorAdminPermissions : bool, optional
        Whether or not to bootstrap the access config values to the cluster. Default is true.
    """
    authenticationMode? : str
    bootstrapClusterCreatorAdminPermissions? : bool

schema ClusterspecinitproviderComputeconfigitem:
    """
    ClusterspecinitproviderComputeconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Request to enable or disable the compute capability on your EKS Auto Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed Instances in your Amazon Web Services account.
    nodePools : [str], optional
        Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are general-purpose and system.
    nodeRoleArn : str, optional
        The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled..
    """
    enabled? : bool
    nodePools? : [str]
    nodeRoleArn? : str

schema ClusterspecinitproviderEncryptionconfigitem:
    """
    ClusterspecinitproviderEncryptionconfigitem schema.

    Attributes
    ----------
    provider : [ClusterspecinitproviderencryptionconfigitemProvideritem], optional
        Configuration block with provider for encryption. Detailed below.
    resources : [str], optional
        List of strings with resources to be encrypted. Valid values: secrets.
    """
    provider? : [ClusterspecinitproviderencryptionconfigitemProvideritem]
    resources? : [str]

schema ClusterspecinitproviderencryptionconfigitemProvideritem:
    """
    ClusterspecinitproviderencryptionconfigitemProvideritem schema.

    Attributes
    ----------
    keyArn : str, optional
        ARN of the Key Management Service (KMS) customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see Allowing Users in Other Accounts to Use a CMK in the AWS Key Management Service Developer Guide.
    """
    keyArn? : str

schema ClusterspecinitproviderKubernetesnetworkconfigitem:
    """
    ClusterspecinitproviderKubernetesnetworkconfigitem schema.

    Attributes
    ----------
    elasticLoadBalancing : [ClusterspecinitproviderkubernetesnetworkconfigitemElasticloadbalancingitem], optional
        Configuration block with elastic load balancing configuration for the cluster. Detailed below.
    ipFamily : str, optional
        The IP family used to assign Kubernetes pod and service addresses. Valid values are ipv4 (default) and ipv6. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.
    serviceIpv4Cidr : str, optional
        The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:
    """
    elasticLoadBalancing? : [ClusterspecinitproviderkubernetesnetworkconfigitemElasticloadbalancingitem]
    ipFamily? : str
    serviceIpv4Cidr? : str

schema ClusterspecinitproviderkubernetesnetworkconfigitemElasticloadbalancingitem:
    """
    ClusterspecinitproviderkubernetesnetworkconfigitemElasticloadbalancingitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Whether zonal shift is enabled for the cluster.
    """
    enabled? : bool

schema ClusterspecinitproviderOutpostconfigitem:
    """
    ClusterspecinitproviderOutpostconfigitem schema.

    Attributes
    ----------
    controlPlaneInstanceType : str, optional
        The Amazon EC2 instance type that you want to use for your local Amazon EKS cluster on Outposts. The instance type that you specify is used for all Kubernetes control plane instances. The instance type can't be changed after cluster creation. Choose an instance type based on the number of nodes that your cluster will have. If your cluster will have:
    controlPlanePlacement : [ClusterspecinitprovideroutpostconfigitemControlplaneplacementitem], optional
        An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
        The control_plane_placement configuration block supports the following arguments:
    outpostArns : [str], optional
        The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. This argument is a list of arns, but only a single Outpost ARN is supported currently.
    """
    controlPlaneInstanceType? : str
    controlPlanePlacement? : [ClusterspecinitprovideroutpostconfigitemControlplaneplacementitem]
    outpostArns? : [str]

schema ClusterspecinitprovideroutpostconfigitemControlplaneplacementitem:
    """
    ClusterspecinitprovideroutpostconfigitemControlplaneplacementitem schema.

    Attributes
    ----------
    groupName : str, optional
        The name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
    """
    groupName? : str

schema ClusterspecinitproviderRemotenetworkconfigitem:
    """
    ClusterspecinitproviderRemotenetworkconfigitem schema.

    Attributes
    ----------
    remoteNodeNetworks : [ClusterspecinitproviderremotenetworkconfigitemRemotenodenetworksitem], optional
        Configuration block with remote node network configuration for EKS Hybrid Nodes. Detailed below.
    remotePodNetworks : [ClusterspecinitproviderremotenetworkconfigitemRemotepodnetworksitem], optional
        Configuration block with remote pod network configuration for EKS Hybrid Nodes. Detailed below.
    """
    remoteNodeNetworks? : [ClusterspecinitproviderremotenetworkconfigitemRemotenodenetworksitem]
    remotePodNetworks? : [ClusterspecinitproviderremotenetworkconfigitemRemotepodnetworksitem]

schema ClusterspecinitproviderremotenetworkconfigitemRemotenodenetworksitem:
    """
    ClusterspecinitproviderremotenetworkconfigitemRemotenodenetworksitem schema.

    Attributes
    ----------
    cidrs : [str], optional
        List of network CIDRs that can contain hybrid nodes.
    """
    cidrs? : [str]

schema ClusterspecinitproviderremotenetworkconfigitemRemotepodnetworksitem:
    """
    ClusterspecinitproviderremotenetworkconfigitemRemotepodnetworksitem schema.

    Attributes
    ----------
    cidrs : [str], optional
        List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
    """
    cidrs? : [str]

schema ClusterspecinitproviderRolearnref:
    """
    Reference to a Role in iam to populate roleArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecinitproviderrolearnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecinitproviderrolearnrefPolicy

schema ClusterspecinitproviderrolearnrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecinitproviderRolearnselector:
    """
    Selector for a Role in iam to populate roleArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecinitproviderrolearnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecinitproviderrolearnselectorPolicy

schema ClusterspecinitproviderrolearnselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecinitproviderStorageconfigitem:
    """
    ClusterspecinitproviderStorageconfigitem schema.

    Attributes
    ----------
    blockStorage : [ClusterspecinitproviderstorageconfigitemBlockstorageitem], optional
        Configuration block with block storage configuration for the cluster. Detailed below.
    """
    blockStorage? : [ClusterspecinitproviderstorageconfigitemBlockstorageitem]

schema ClusterspecinitproviderstorageconfigitemBlockstorageitem:
    """
    ClusterspecinitproviderstorageconfigitemBlockstorageitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Indicates if the block storage capability is enabled on your EKS Auto Mode cluster. If the block storage capability is enabled, EKS Auto Mode will create and delete block storage volumes in your Amazon Web Services account.
    """
    enabled? : bool

schema ClusterspecinitproviderUpgradepolicyitem:
    """
    ClusterspecinitproviderUpgradepolicyitem schema.

    Attributes
    ----------
    supportType : str, optional
        Support type to use for the cluster. If the cluster is set to EXTENDED, it will enter extended support at the end of standard support. If the cluster is set to STANDARD, it will be automatically upgraded at the end of standard support. Valid values are EXTENDED, STANDARD
    """
    supportType? : str

schema ClusterspecinitproviderVpcconfigitem:
    """
    ClusterspecinitproviderVpcconfigitem schema.

    Attributes
    ----------
    endpointPrivateAccess : bool, optional
        Whether the Amazon EKS private API server endpoint is enabled. Default is false.
    endpointPublicAccess : bool, optional
        Whether the Amazon EKS public API server endpoint is enabled. Default is true.
    publicAccessCidrs : [str], optional
        List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with 0.0.0.0/0.
    securityGroupIdRefs : [ClusterspecinitprovidervpcconfigitemSecuritygroupidrefsitem], optional
        References to SecurityGroup in ec2 to populate securityGroupIds.
    securityGroupIdSelector : ClusterspecinitprovidervpcconfigitemSecuritygroupidselector, optional
        Selector for a list of SecurityGroup in ec2 to populate securityGroupIds.
    securityGroupIds : [str], optional
        List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
    subnetIdRefs : [ClusterspecinitprovidervpcconfigitemSubnetidrefsitem], optional
        References to Subnet in ec2 to populate subnetIds.
    subnetIdSelector : ClusterspecinitprovidervpcconfigitemSubnetidselector, optional
        Selector for a list of Subnet in ec2 to populate subnetIds.
    subnetIds : [str], optional
        List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
    """
    endpointPrivateAccess? : bool
    endpointPublicAccess? : bool
    publicAccessCidrs? : [str]
    securityGroupIdRefs? : [ClusterspecinitprovidervpcconfigitemSecuritygroupidrefsitem]
    securityGroupIdSelector? : ClusterspecinitprovidervpcconfigitemSecuritygroupidselector
    securityGroupIds? : [str]
    subnetIdRefs? : [ClusterspecinitprovidervpcconfigitemSubnetidrefsitem]
    subnetIdSelector? : ClusterspecinitprovidervpcconfigitemSubnetidselector
    subnetIds? : [str]

schema ClusterspecinitprovidervpcconfigitemSecuritygroupidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecinitprovidervpcconfigitemsecuritygroupidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecinitprovidervpcconfigitemsecuritygroupidrefsitemPolicy

schema ClusterspecinitprovidervpcconfigitemsecuritygroupidrefsitemPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecinitprovidervpcconfigitemSecuritygroupidselector:
    """
    Selector for a list of SecurityGroup in ec2 to populate securityGroupIds.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecinitprovidervpcconfigitemsecuritygroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecinitprovidervpcconfigitemsecuritygroupidselectorPolicy

schema ClusterspecinitprovidervpcconfigitemsecuritygroupidselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecinitprovidervpcconfigitemSubnetidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecinitprovidervpcconfigitemsubnetidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecinitprovidervpcconfigitemsubnetidrefsitemPolicy

schema ClusterspecinitprovidervpcconfigitemsubnetidrefsitemPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecinitprovidervpcconfigitemSubnetidselector:
    """
    Selector for a list of Subnet in ec2 to populate subnetIds.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecinitprovidervpcconfigitemsubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecinitprovidervpcconfigitemsubnetidselectorPolicy

schema ClusterspecinitprovidervpcconfigitemsubnetidselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecinitproviderZonalshiftconfigitem:
    """
    ClusterspecinitproviderZonalshiftconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Whether zonal shift is enabled for the cluster.
    """
    enabled? : bool

schema ClusterspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecproviderconfigrefPolicy

schema ClusterspecproviderconfigrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema ClusterspecWriteconnectionsecrettoref:
    """
    WriteConnectionSecretToReference specifies the namespace and name of a
    Secret to which any connection details for this managed resource should
    be written. Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    name : str, required
        Name of the secret.
    namespace : str, required
        Namespace of the secret.
    """
    name : str
    namespace : str

schema ClusterStatus:
    """
    ClusterStatus defines the observed state of Cluster.

    Attributes
    ----------
    atProvider : ClusterstatusAtprovider, optional
        No description available.
    conditions : [ClusterstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : ClusterstatusAtprovider
    conditions? : [ClusterstatusConditionsitem]
    observedGeneration? : int

schema ClusterstatusAtprovider:
    """
    ClusterstatusAtprovider schema.

    Attributes
    ----------
    accessConfig : [ClusterstatusatproviderAccessconfigitem], optional
        Configuration block for the access config associated with your cluster, see Amazon EKS Access Entries. Detailed below.
    arn : str, optional
        ARN of the cluster.
    bootstrapSelfManagedAddons : bool, optional
        Install default unmanaged add-ons, such as aws-cni, kube-proxy, and CoreDNS during cluster creation. If false, you must manually install desired add-ons. Changing this value will force a new cluster to be created. Defaults to true.
    certificateAuthority : [ClusterstatusatproviderCertificateauthorityitem], optional
        Attribute block containing certificate-authority-data for your cluster. Detailed below.
    clusterId : str, optional
        The ID of your local Amazon EKS cluster on the AWS Outpost. This attribute isn't available for an AWS EKS cluster on AWS cloud.
    computeConfig : [ClusterstatusatproviderComputeconfigitem], optional
        Configuration block with compute configuration for EKS Auto Mode. Detailed below.
    createdAt : str, optional
        Unix epoch timestamp in seconds for when the cluster was created.
    deletionProtection : bool, optional
        Whether to enable deletion protection for the cluster. When enabled, the cluster cannot be deleted unless deletion protection is first disabled. Default: false.
    enabledClusterLogTypes : [str], optional
        List of the desired control plane logging to enable. For more information, see Amazon EKS Control Plane Logging.
    encryptionConfig : [ClusterstatusatproviderEncryptionconfigitem], optional
        Configuration block with encryption configuration for the cluster. Detailed below.
    endpoint : str, optional
        Endpoint for your Kubernetes API server.
    forceUpdateVersion : bool, optional
        Force version update by overriding upgrade-blocking readiness checks when updating a cluster.
    id : str, optional
        Name of the cluster.
    identity : [ClusterstatusatproviderIdentityitem], optional
        Attribute block containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. Detailed below.
    kubernetesNetworkConfig : [ClusterstatusatproviderKubernetesnetworkconfigitem], optional
        Configuration block with kubernetes network configuration for the cluster. Detailed below.
    outpostConfig : [ClusterstatusatproviderOutpostconfigitem], optional
        Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud.
    platformVersion : str, optional
        Platform version for the cluster.
    region : str, optional
        Region where this resource will be managed. Defaults to the Region set in the provider configuration.
        Region is the region you'd like your resource to be created in.
    remoteNetworkConfig : [ClusterstatusatproviderRemotenetworkconfigitem], optional
        Configuration block with remote network configuration for EKS Hybrid Nodes. Detailed below.
    roleArn : str, optional
        ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding depends_on if using the aws_iam_role_policy resource or aws_iam_role_policy_attachment resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion.
    status : str, optional
        Status of the EKS cluster. One of CREATING, ACTIVE, DELETING, FAILED.
    storageConfig : [ClusterstatusatproviderStorageconfigitem], optional
        Configuration block with storage configuration for EKS Auto Mode. Detailed below.
    tags : {str:str}, optional
        Key-value map of resource tags.
    tagsAll : {str:str}, optional
        Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
    upgradePolicy : [ClusterstatusatproviderUpgradepolicyitem], optional
        Configuration block for the support policy to use for the cluster.  See upgrade_policy for details.
    version : str, optional
        Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.
    vpcConfig : [ClusterstatusatproviderVpcconfigitem], optional
        Configuration block for the VPC associated with your cluster. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide. Detailed below. Also contains attributes detailed in the Attributes section.
    zonalShiftConfig : [ClusterstatusatproviderZonalshiftconfigitem], optional
        Configuration block with zonal shift configuration for the cluster. Detailed below.
    """
    accessConfig? : [ClusterstatusatproviderAccessconfigitem]
    arn? : str
    bootstrapSelfManagedAddons? : bool
    certificateAuthority? : [ClusterstatusatproviderCertificateauthorityitem]
    clusterId? : str
    computeConfig? : [ClusterstatusatproviderComputeconfigitem]
    createdAt? : str
    deletionProtection? : bool
    enabledClusterLogTypes? : [str]
    encryptionConfig? : [ClusterstatusatproviderEncryptionconfigitem]
    endpoint? : str
    forceUpdateVersion? : bool
    id? : str
    identity? : [ClusterstatusatproviderIdentityitem]
    kubernetesNetworkConfig? : [ClusterstatusatproviderKubernetesnetworkconfigitem]
    outpostConfig? : [ClusterstatusatproviderOutpostconfigitem]
    platformVersion? : str
    region? : str
    remoteNetworkConfig? : [ClusterstatusatproviderRemotenetworkconfigitem]
    roleArn? : str
    status? : str
    storageConfig? : [ClusterstatusatproviderStorageconfigitem]
    tags? : {str:str}
    tagsAll? : {str:str}
    upgradePolicy? : [ClusterstatusatproviderUpgradepolicyitem]
    version? : str
    vpcConfig? : [ClusterstatusatproviderVpcconfigitem]
    zonalShiftConfig? : [ClusterstatusatproviderZonalshiftconfigitem]

schema ClusterstatusatproviderAccessconfigitem:
    """
    ClusterstatusatproviderAccessconfigitem schema.

    Attributes
    ----------
    authenticationMode : str, optional
        The authentication mode for the cluster. Valid values are CONFIG_MAP, API or API_AND_CONFIG_MAP
    bootstrapClusterCreatorAdminPermissions : bool, optional
        Whether or not to bootstrap the access config values to the cluster. Default is true.
    """
    authenticationMode? : str
    bootstrapClusterCreatorAdminPermissions? : bool

schema ClusterstatusatproviderCertificateauthorityitem:
    """
    ClusterstatusatproviderCertificateauthorityitem schema.

    Attributes
    ----------
    data : str, optional
        Base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.
    """
    data? : str

schema ClusterstatusatproviderComputeconfigitem:
    """
    ClusterstatusatproviderComputeconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Request to enable or disable the compute capability on your EKS Auto Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed Instances in your Amazon Web Services account.
    nodePools : [str], optional
        Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are general-purpose and system.
    nodeRoleArn : str, optional
        The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled..
    """
    enabled? : bool
    nodePools? : [str]
    nodeRoleArn? : str

schema ClusterstatusatproviderEncryptionconfigitem:
    """
    ClusterstatusatproviderEncryptionconfigitem schema.

    Attributes
    ----------
    provider : [ClusterstatusatproviderencryptionconfigitemProvideritem], optional
        Configuration block with provider for encryption. Detailed below.
    resources : [str], optional
        List of strings with resources to be encrypted. Valid values: secrets.
    """
    provider? : [ClusterstatusatproviderencryptionconfigitemProvideritem]
    resources? : [str]

schema ClusterstatusatproviderencryptionconfigitemProvideritem:
    """
    ClusterstatusatproviderencryptionconfigitemProvideritem schema.

    Attributes
    ----------
    keyArn : str, optional
        ARN of the Key Management Service (KMS) customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see Allowing Users in Other Accounts to Use a CMK in the AWS Key Management Service Developer Guide.
    """
    keyArn? : str

schema ClusterstatusatproviderIdentityitem:
    """
    ClusterstatusatproviderIdentityitem schema.

    Attributes
    ----------
    oidc : [ClusterstatusatprovideridentityitemOidcitem], optional
        Nested block containing OpenID Connect identity provider information for the cluster. Detailed below.
    """
    oidc? : [ClusterstatusatprovideridentityitemOidcitem]

schema ClusterstatusatprovideridentityitemOidcitem:
    """
    ClusterstatusatprovideridentityitemOidcitem schema.

    Attributes
    ----------
    issuer : str, optional
        Issuer URL for the OpenID Connect identity provider.
    """
    issuer? : str

schema ClusterstatusatproviderKubernetesnetworkconfigitem:
    """
    ClusterstatusatproviderKubernetesnetworkconfigitem schema.

    Attributes
    ----------
    elasticLoadBalancing : [ClusterstatusatproviderkubernetesnetworkconfigitemElasticloadbalancingitem], optional
        Configuration block with elastic load balancing configuration for the cluster. Detailed below.
    ipFamily : str, optional
        The IP family used to assign Kubernetes pod and service addresses. Valid values are ipv4 (default) and ipv6. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.
    serviceIpv4Cidr : str, optional
        The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:
    serviceIpv6Cidr : str, optional
        (Computed) The CIDR block that Kubernetes pod and service IP addresses are assigned from if you specify ipv6 for ip_family when you create the cluster. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster.
    """
    elasticLoadBalancing? : [ClusterstatusatproviderkubernetesnetworkconfigitemElasticloadbalancingitem]
    ipFamily? : str
    serviceIpv4Cidr? : str
    serviceIpv6Cidr? : str

schema ClusterstatusatproviderkubernetesnetworkconfigitemElasticloadbalancingitem:
    """
    ClusterstatusatproviderkubernetesnetworkconfigitemElasticloadbalancingitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Whether zonal shift is enabled for the cluster.
    """
    enabled? : bool

schema ClusterstatusatproviderOutpostconfigitem:
    """
    ClusterstatusatproviderOutpostconfigitem schema.

    Attributes
    ----------
    controlPlaneInstanceType : str, optional
        The Amazon EC2 instance type that you want to use for your local Amazon EKS cluster on Outposts. The instance type that you specify is used for all Kubernetes control plane instances. The instance type can't be changed after cluster creation. Choose an instance type based on the number of nodes that your cluster will have. If your cluster will have:
    controlPlanePlacement : [ClusterstatusatprovideroutpostconfigitemControlplaneplacementitem], optional
        An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
        The control_plane_placement configuration block supports the following arguments:
    outpostArns : [str], optional
        The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. This argument is a list of arns, but only a single Outpost ARN is supported currently.
    """
    controlPlaneInstanceType? : str
    controlPlanePlacement? : [ClusterstatusatprovideroutpostconfigitemControlplaneplacementitem]
    outpostArns? : [str]

schema ClusterstatusatprovideroutpostconfigitemControlplaneplacementitem:
    """
    ClusterstatusatprovideroutpostconfigitemControlplaneplacementitem schema.

    Attributes
    ----------
    groupName : str, optional
        The name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
    """
    groupName? : str

schema ClusterstatusatproviderRemotenetworkconfigitem:
    """
    ClusterstatusatproviderRemotenetworkconfigitem schema.

    Attributes
    ----------
    remoteNodeNetworks : [ClusterstatusatproviderremotenetworkconfigitemRemotenodenetworksitem], optional
        Configuration block with remote node network configuration for EKS Hybrid Nodes. Detailed below.
    remotePodNetworks : [ClusterstatusatproviderremotenetworkconfigitemRemotepodnetworksitem], optional
        Configuration block with remote pod network configuration for EKS Hybrid Nodes. Detailed below.
    """
    remoteNodeNetworks? : [ClusterstatusatproviderremotenetworkconfigitemRemotenodenetworksitem]
    remotePodNetworks? : [ClusterstatusatproviderremotenetworkconfigitemRemotepodnetworksitem]

schema ClusterstatusatproviderremotenetworkconfigitemRemotenodenetworksitem:
    """
    ClusterstatusatproviderremotenetworkconfigitemRemotenodenetworksitem schema.

    Attributes
    ----------
    cidrs : [str], optional
        List of network CIDRs that can contain hybrid nodes.
    """
    cidrs? : [str]

schema ClusterstatusatproviderremotenetworkconfigitemRemotepodnetworksitem:
    """
    ClusterstatusatproviderremotenetworkconfigitemRemotepodnetworksitem schema.

    Attributes
    ----------
    cidrs : [str], optional
        List of network CIDRs that can contain pods that run Kubernetes webhooks on hybrid nodes.
    """
    cidrs? : [str]

schema ClusterstatusatproviderStorageconfigitem:
    """
    ClusterstatusatproviderStorageconfigitem schema.

    Attributes
    ----------
    blockStorage : [ClusterstatusatproviderstorageconfigitemBlockstorageitem], optional
        Configuration block with block storage configuration for the cluster. Detailed below.
    """
    blockStorage? : [ClusterstatusatproviderstorageconfigitemBlockstorageitem]

schema ClusterstatusatproviderstorageconfigitemBlockstorageitem:
    """
    ClusterstatusatproviderstorageconfigitemBlockstorageitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Indicates if the block storage capability is enabled on your EKS Auto Mode cluster. If the block storage capability is enabled, EKS Auto Mode will create and delete block storage volumes in your Amazon Web Services account.
    """
    enabled? : bool

schema ClusterstatusatproviderUpgradepolicyitem:
    """
    ClusterstatusatproviderUpgradepolicyitem schema.

    Attributes
    ----------
    supportType : str, optional
        Support type to use for the cluster. If the cluster is set to EXTENDED, it will enter extended support at the end of standard support. If the cluster is set to STANDARD, it will be automatically upgraded at the end of standard support. Valid values are EXTENDED, STANDARD
    """
    supportType? : str

schema ClusterstatusatproviderVpcconfigitem:
    """
    ClusterstatusatproviderVpcconfigitem schema.

    Attributes
    ----------
    clusterSecurityGroupId : str, optional
        (Computed) Cluster security group that is created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.
    endpointPrivateAccess : bool, optional
        Whether the Amazon EKS private API server endpoint is enabled. Default is false.
    endpointPublicAccess : bool, optional
        Whether the Amazon EKS public API server endpoint is enabled. Default is true.
    publicAccessCidrs : [str], optional
        List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with 0.0.0.0/0.
    securityGroupIds : [str], optional
        List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
    subnetIds : [str], optional
        List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
    vpcId : str, optional
        (Computed) ID of the VPC associated with your cluster.
    """
    clusterSecurityGroupId? : str
    endpointPrivateAccess? : bool
    endpointPublicAccess? : bool
    publicAccessCidrs? : [str]
    securityGroupIds? : [str]
    subnetIds? : [str]
    vpcId? : str

schema ClusterstatusatproviderZonalshiftconfigitem:
    """
    ClusterstatusatproviderZonalshiftconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Whether zonal shift is enabled for the cluster.
    """
    enabled? : bool

schema ClusterstatusConditionsitem:
    """
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, required
        LastTransitionTime is the last time this condition transitioned from one
        status to another.
    message : str, optional
        A Message containing details about this condition's last transition from
        one status to another, if any.
    observedGeneration : int, optional
        ObservedGeneration represents the .metadata.generation that the condition was set based upon.
        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
        with respect to the current state of the instance.
    reason : str, required
        A Reason for this condition's last transition from one status to another.
    status : str, required
        Status of this condition; is it currently True, False, or Unknown?
    type : str, required
        Type of this condition. At most one of each condition type may apply to
        a resource at any point in time.
    """
    lastTransitionTime : str
    message? : str
    observedGeneration? : int
    reason : str
    status : str
    type : str
import json
import schemas.up.vpc as vpc
import schemas.up.subnet as subnets
import schemas.up.internetGateway as internetGateway
import schemas.up.eip as eip
import schemas.up.natGateway as natGateway
import schemas.up.routeTable as routeTable
import schemas.up.routeTableAssociation as routeTableAssociation
import schemas.up.route as route
import schemas.up.mainRouteTableAssociation as mainRouteTableAssociation
import schemas.up.securityGroup as securityGroup
import schemas.up.securityGroupRule as securityGroupRule
import schemas.up.vpcEndpoint as vpcEndpoint
import schemas.up.vpcEndpointSecurityGroupAssociation as vpcEndpointSecurityGroupAssociation
import schemas.up.vpcEndpointSubnetAssociation as vpcEndpointSubnetAssociation
import schemas.up.logGroup as logGroup
import schemas.up.key as key
import schemas.up.alias as alias
import schemas.up.role as role
import schemas.up.rolePolicyAttachment as rolePolicyAttachment
import schemas.up.flowLog as flowLog



observed_xr = option("params").oxr
_id = observed_xr.spec.id
_accountId = observed_xr.spec.accountId
_region = observed_xr.spec.region
_cidrBlock = observed_xr.spec.vpcCidr
_enableDnsHostnames = observed_xr.spec.enableDnsHostNames or True
_enableDnsSupport = observed_xr.spec.enableDnsSupport or True
_tags = observed_xr.spec.tags or {}
_instanceTenancy = observed_xr.spec.instanceTenancy or "default"
_providerConfig = observed_xr.spec.providerConfigName or "default"
_subnets = observed_xr.spec.subnets or []
_labels = {"claim-name": _id}
_natStrategy = observed_xr.spec.natGatewayStrategy or "Single"
_public_subnets = [s for s in _subnets if s.type == "public"]
_private_subnets = [s for s in _subnets if s.type == "private"]
_database_subnets = [s for s in _subnets if s.type == "database"]
_azs = {s.az: True for s in _subnets}
_enabledS3Gateway = observed_xr.spec.enabledS3Gateway or False
_enabledDynamodbGateway = observed_xr.spec.enabledDynamodbGateway or False
_enabledInterfaceEndpoints = observed_xr.spec.enabledInterfaceEndpoints or []
_flowLogsConfig = observed_xr.spec.flowLogs or {enabled = False}

_vpc_resource = vpc.VpcBlueprint {
    _name = "vpc-${_id}"
    _labels = _labels
    _region = _region
    _cidrBlock = _cidrBlock
    _enableDnsHostnames = _enableDnsHostnames
    _enableDnsSupport = _enableDnsSupport
    _tags = _tags | {
        Name = _name
    }
    _instanceTenancy = _instanceTenancy
    _providerConfig = _providerConfig
}

_subnet_resource = [subnets.SubnetBlueprint {
    _name = "subnet-${_id}-${s.az}-${s.type}"
    _labels = _labels | {
        "subnet.type" = s.type
    }
    _providerConfig = _providerConfig
    _availabilityZone = s.az
    _cidrBlock = s.cidr
    _mapPublicIpOnLaunch = True if s.type == "public" else False
    _region = _region
    _tags = _tags | {
        Name = _name
    }
    _vpcIdSelector = {
        matchControllerRef = True
    }
} for s in _subnets]

_internetGateway_resource = internetGateway.InternetgatewayBlueprint {
    _name = "igw-${_id}"
    _labels = _labels
    _providerConfig = _providerConfig
    _region = _region
    _tags = _tags | {
        Name = _name
    }
    _vpcIdSelector = {
        matchControllerRef = True
    }
}

_eip_resources = []
_nat_gateway_resources = []
_route_table_resources = []

if _natStrategy == "PerAZ":
    # --- Estrategia: Un NAT Gateway por Zona de Disponibilidad ---
    _eip_resources = [eip.EipBlueprint {
        _name = "eip-${_id}-${s.az}"
        _providerConfig = _providerConfig
        _region = _region
        _tags = _tags | {
            Name = _name
        }
    } for s in _public_subnets]
    _nat_gateway_resources = [natGateway.NatgatewayBlueprint {
        _name = "ng-${_id}-${s.az}"
        _region = _region
        _providerConfig = _providerConfig
        _subnetIdRef.name = "subnet-${_id}-${s.az}-${s.type}"
        _allocationIdRef.name = "eip-${_id}-${s.az}"
        _tags = _tags | {
            Name = _name
        }
    } for s in _public_subnets]

    _public_route_table = routeTable.RoutetableBlueprint {
        _name = "rt-${_id}-public"
        _region = _region
        _providerConfig = _providerConfig
        _tags = _tags | {
            Name = _name
        }
        _vpcIdSelector = {
            matchControllerRef = True
        }
    }
    _private_route_tables = [routeTable.RoutetableBlueprint {
        _name = "rt-${_id}-private-${az}"
        _region = _region
        _providerConfig = _providerConfig
        _tags = _tags | {
            Name = _name
        }
        _vpcIdSelector = {
            matchControllerRef = True
        }
    } for az in _azs]

    _public_route_table_associations = [routeTableAssociation.RoutetableassociationBlueprint {
        _name = "rta-${_id}-public-${s.az}"
        _providerConfig = _providerConfig
        _routeTableIdRef.name = _public_route_table._name
        _subnetIdRef.name = "subnet-${_id}-${s.az}-${s.type}"
        _region = _region
    } for s in _public_subnets]

    _private_route_table_associations = [routeTableAssociation.RoutetableassociationBlueprint {
        _name = "rta-${_id}-${s.type}-${s.az}"
        _providerConfig = _providerConfig
        _routeTableIdRef = {
            name = "rt-${_id}-private-${s.az}"
        }
        _subnetIdRef = {
            name = "subnet-${_id}-${s.az}-${s.type}"
        }
        _region = _region
    } for s in _subnets if s.type != "public"]

    _public_routes = route.RouteBlueprint {
        _name = "route-${_id}-public"
        _providerConfig = _providerConfig
        _destinationCidrBlock = "0.0.0.0/0"
        _gatewayIdSelector = {
            matchControllerRef = True
        }
        _routeTableIdRef.name = _public_route_table._name
        _region = _region
    }

    _private_routes = [route.RouteBlueprint {
        _name = "route-${_id}-private-${az}"
        _providerConfig = _providerConfig
        _destinationCidrBlock = "0.0.0.0/0"
        _natGatewayIdRef = {
            name = "ng-${_id}-${az}"
        }
        _routeTableIdRef.name = "rt-${_id}-private-${az}"
        _region = _region
    } for az in _azs]

    _main_route_table = mainRouteTableAssociation.MainroutetableassociationBlueprint {
        _name = "main-rta-${_id}"
        _providerConfig = _providerConfig
        _region = _region
        _routeTableIdSelector = {
            matchControllerRef = True
        }
        _vpcIdSelector = {
            matchControllerRef = True
        }
    }

    _route_table_resources = [_public_route_table] + _private_route_tables + _public_route_table_associations + _private_route_table_associations + [_public_routes] + _private_routes + [_main_route_table]
else:
    # _natStrategy == "Single"
    # --- Estrategia: Un Único NAT Gateway para todas las Zonas ---
    assert len(_public_subnets) > 0, "La estrategia 'Single' requiere al menos una subnet pública."
    _eip_resources = [
        eip.EipBlueprint {
            _name = "eip-${_id}"
            _region = _region
            _providerConfig = _providerConfig
            _tags = _tags | {
                Name = _name
            }
        }
    ]
    _nat_gateway_resources = [
        natGateway.NatgatewayBlueprint {
            _name = "ng-${_id}"
            _region = _region
            _providerConfig = _providerConfig
            _subnetIdRef = {
                name = "subnet-${_id}-${_public_subnets[0].az}-${_public_subnets[0].type}"
            }
            _allocationIdSelector = {
                matchControllerRef = True
            }
            _tags = _tags | {
                Name = _name
            }
        }
    ]
    _public_route_table = routeTable.RoutetableBlueprint {
        _name = "rt-${_id}-public"
        _region = _region
        _providerConfig = _providerConfig
        _tags = _tags | {
            Name = _name
        }
        _vpcIdSelector = {
            matchControllerRef = True
        }
    }

    _private_route_table = routeTable.RoutetableBlueprint {
        _name = "rt-${_id}-private"
        _region = _region
        _providerConfig = _providerConfig
        _tags = _tags | {
            Name = _name
        }
        _vpcIdSelector = {
            matchControllerRef = True
        }
    }

    _public_route_table_associations = [routeTableAssociation.RoutetableassociationBlueprint {
        _name = "rta-${_id}-public-${s.az}"
        _providerConfig = _providerConfig
        _routeTableIdRef.name = _public_route_table._name
        _subnetIdRef.name = "subnet-${_id}-${s.az}-${s.type}"
        _region = _region
    } for s in _public_subnets]

    _private_route_table_associations = [routeTableAssociation.RoutetableassociationBlueprint {
        _name = "rta-${_id}-${s.type}-${s.az}"
        _providerConfig = _providerConfig
        _routeTableIdRef = {
            name = _private_route_table._name
        }
        _subnetIdRef = {
            name = "subnet-${_id}-${s.az}-${s.type}"
        }
        _region = _region
    } for s in _subnets if s.type != "public"]

    _public_routes = route.RouteBlueprint {
        _name = "route-${_id}-public"
        _providerConfig = _providerConfig
        _destinationCidrBlock = "0.0.0.0/0"
        _gatewayIdSelector = {
            matchControllerRef = True
        }
        _routeTableIdRef.name = _public_route_table._name
        _region = _region
    }

    _private_routes = [route.RouteBlueprint {
        _name = "route-${_id}-private"
        _providerConfig = _providerConfig
        _destinationCidrBlock = "0.0.0.0/0"
        _natGatewayIdSelector = {
            matchControllerRef = True
        }
        _routeTableIdRef.name = _private_route_table._name
        _region = _region
    }]

    _main_route_table = mainRouteTableAssociation.MainroutetableassociationBlueprint {
        _name = "main-rta-${_id}"
        _providerConfig = _providerConfig
        _region = _region
        _routeTableIdSelector = {
            matchControllerRef = True
        }
        _vpcIdSelector = {
            matchControllerRef = True
        }
    }

    _route_table_resources = [_public_route_table, _private_route_table] + _public_route_table_associations + _private_route_table_associations + [_public_routes] + _private_routes + [_main_route_table]

_interface_endpoint_resources = []

_interface_endpoint_sg_resource = []


if len(_enabledInterfaceEndpoints) > 0:

    _sg_for_interface_endpoints = securityGroup.SecuritygroupBlueprint {
        _name = "security-group-${_id}-interface-endpoints"
        _labels = _labels
        _providerConfig = _providerConfig
        _description = "Security Group for Interface VPC Endpoints"
        _securitygroupName = _name
        _revokeRulesOnDelete = True
        _vpcIdSelector = {
            matchControllerRef = True
        }
        _region = _region
        _tags = _tags | { Name = _name }
    }

    _sg_for_interface_endpoints_rules = securityGroupRule.SecuritygroupruleBlueprint {
        _name = "sg-rule-${_id}-interface-endpoints-ingress"
        _providerConfig = _providerConfig
        _description = "Allow all outbound traffic"
        _fromPort = 443
        _toPort = 443
        _protocol = "tcp"
        _securityGroupIdSelector = {
            matchControllerRef = True
        }
        _cidrBlocks = ["0.0.0.0/0"]
        _region = _region
        _type = "ingress"
    }

    _interface_endpoint_sg_resource = [_sg_for_interface_endpoints, _sg_for_interface_endpoints_rules]

    _interface_endpoint = [
        vpcEndpoint.VpcendpointBlueprint {
            _name = "${service}-interface-vpce-${_id}"
            _labels = _labels
            _providerConfig = _providerConfig
            _region = _region
            _vpcIdSelector = {
                matchControllerRef = True
            }
            _tags = _tags | { Name = _name }
            _vpcEndpointType = "Interface"
            _serviceName = "com.amazonaws.${_region}.${service}"
            _privateDnsEnabled = True
        }
        for service in _enabledInterfaceEndpoints
    ]

    _interface_endpoint_sg_associations = [
        vpcEndpointSecurityGroupAssociation.VpcendpointsecuritygroupassociationBlueprint {
            _name = "vpce-sg-assoc-${service}-${_id}"
            _labels = _labels
            _providerConfig = _providerConfig
            _region = _region
            _securityGroupIdRef = {
                name = _sg_for_interface_endpoints._name
            }
            _vpcEndpointIdRef = {
                name = "${service}-interface-vpce-${_id}"
            }
        }
        for service in _enabledInterfaceEndpoints
    ]

    _interface_endpoint_subnet_associations = [
        vpcEndpointSubnetAssociation.VpcendpointsubnetassociationBlueprint {
            _name = "vpce-subnet-assoc-${service}-${_id}-${s.az}"
            _labels = _labels
            _providerConfig = _providerConfig
            _region = _region
            _subnetIdRef = {
                name = "subnet-${_id}-${s.az}-${s.type}"
            }
            _vpcEndpointIdRef = {
                name = "${service}-interface-vpce-${_id}"
            }
        }
        for service in _enabledInterfaceEndpoints
        for s in _private_subnets if s.type == "private"
    ]

    _interface_endpoint_resources = _interface_endpoint + _interface_endpoint_sg_associations + _interface_endpoint_subnet_associations

_flow_log_all_resources = []
if _flowLogsConfig.enabled == True and _flowLogsConfig.encryptionEnabled == True:

    _flow_log_role_policy_document = json.encode({
        "Version": "2012-10-17",
        "Statement": [{
            "Effect": "Allow",
            "Principal": {"Service": "vpc-flow-logs.amazonaws.com"},
            "Action": "sts:AssumeRole"
        }]
    })   

    _flow_log_role_resource = role.RoleBlueprint {
        _name = "role-flowlogs-${_id}"
        _providerConfig = _providerConfig
        _assumeRolePolicy = _flow_log_role_policy_document
        _description = "Role for VPC Flow Logs"
        _tags = _tags | {
            Name = _name
        }
    }

    _log_group_key_resource = key.KeyBlueprint {
        _name = "log-group-key-${_id}"
        _deletionWindowInDays = 7
        _description = "KMS Key for VPC Flow Logs"
        _enableKeyRotation = True
        _isEnabled = True
        _keyUsage = "ENCRYPT_DECRYPT"
        _multiRegion = False
        _policy = json.encode({
            "Version": "2012-10-17",
            "Statement": [
                {
                    "Sid": "Enable CloudWatch logs encryption",
                    "Effect": "Allow",
                    "Principal": {
                        "Service": "logs.${_region}.amazonaws.com"
                    },
                    "Action": [
                        "kms:Encrypt",
                        "kms:Decrypt",
                        "kms:ReEncrypt*",
                        "kms:GenerateDataKey*",
                        "kms:DescribeKey"
                    ],
                    "Resource": "*"
                },
                {
                    "Sid": "Allow account root to manage the key",
                    "Effect": "Allow",
                    "Principal": {
                        "AWS": "arn:aws:iam::${_accountId}:root"
                    },
                    "Action": "kms:*",
                    "Resource": "*"
                }
            ]
        })
        _region = _region
        _tags = _tags | {Name = _name}
        _providerConfig = _providerConfig
    }

    _log_group_alias_key_resource = alias.AliasBlueprint {
        _name = "log-group-alias-${_id}"
        _targetKeyIdSelector = {
            matchControllerRef = True
        }
        _region = _region
        _providerConfig = _providerConfig
    }


    _log_group_resource = logGroup.GroupBlueprint {
        _name = "vpc-flowlogs-${_id}"
        _providerConfig = _providerConfig
#        _logGroupName = "/aws/vpc/${_name}"
        _kmsKeyIdSelector = {
            matchControllerRef = True
        }
        _logGroupClass = "STANDARD"
        _region = _region
        _retentionInDays = _flowLogsConfig.retentionInDays or 90
        _tags = _tags | {
            Name = _name
        }
        _skipDestroy = True
    }

    _flow_log_policy_attachment_resource = rolePolicyAttachment.RolepolicyattachmentBlueprint {
        _name = "policy-attachment-flowlogs-${_id}"
        _providerConfig = _providerConfig
        _role = _flow_log_role_resource._name
        _policyArn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
    }

    _flow_log_resource = flowLog.FlowlogBlueprint {
        _name = "flowlog-vpc-${_id}"
        _region = _region
        _providerConfig = _providerConfig
        _logDestination = "arn:aws:logs:${_region}:${_accountId}:log-group:${_log_group_resource._name}"
        _logDestinationType = "cloud-watch-logs"
        _iamRoleArnRef = {
            name = _flow_log_role_resource._name
        }
        _vpcIdSelector = { 
            matchControllerRef = True 
        }
        _trafficType = _flowLogsConfig.trafficType or "ALL"
        _tags = _tags | {
            Name = _name
        }
    }

    _flow_log_all_resources = [
        _flow_log_role_resource,
        _log_group_key_resource,
        _log_group_alias_key_resource,
        _log_group_resource,
        _flow_log_policy_attachment_resource,
        _flow_log_resource
    ]


items = [_vpc_resource, _internetGateway_resource] + _subnet_resource + _eip_resources + _nat_gateway_resources + _route_table_resources + _interface_endpoint_sg_resource + _interface_endpoint_resources + _flow_log_all_resources

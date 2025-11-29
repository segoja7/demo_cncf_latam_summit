# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.eks_aws_crossplane_io.v1alpha1.eks_aws_crossplane_io_v1alpha1_NodeGroup as nodegroup_schema

schema NodegroupBlueprint(nodegroup_schema.Nodegroup):
    """Este Blueprint simplifica la creación de un recurso Nodegroup,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _amiType?: str
    _capacityType?: "ON_DEMAND" | "SPOT"
    _clusterName?: str
    _clusterNameRef?: nodegroup_schema.NodegroupspecforproviderClusternameref
    _clusterNameSelector?: nodegroup_schema.NodegroupspecforproviderClusternameselector
    _diskSize?: int
    _instanceTypes?: [str]
    _launchTemplate?: nodegroup_schema.NodegroupspecforproviderLaunchtemplate
    _nodeRole?: str
    _nodeRoleRef?: nodegroup_schema.NodegroupspecforproviderNoderoleref
    _nodeRoleSelector?: nodegroup_schema.NodegroupspecforproviderNoderoleselector
    _region: str
    _releaseVersion?: str
    _remoteAccess?: nodegroup_schema.NodegroupspecforproviderRemoteaccess
    _scalingConfig?: nodegroup_schema.NodegroupspecforproviderScalingconfig
    _subnetRefs?: [nodegroup_schema.NodegroupspecforproviderSubnetrefsitem]
    _subnetSelector?: nodegroup_schema.NodegroupspecforproviderSubnetselector
    _subnets?: [str]
    _tags?: {str:str}
    _taints?: [nodegroup_schema.NodegroupspecforproviderTaintsitem]
    _updateConfig?: nodegroup_schema.NodegroupspecforproviderUpdateconfig
    _version?: str

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            amiType = _amiType
            capacityType = _capacityType
            clusterName = _clusterName
            clusterNameRef = _clusterNameRef
            clusterNameSelector = _clusterNameSelector
            diskSize = _diskSize
            instanceTypes = _instanceTypes
            labels = _labels
            launchTemplate = _launchTemplate
            nodeRole = _nodeRole
            nodeRoleRef = _nodeRoleRef
            nodeRoleSelector = _nodeRoleSelector
            region = _region
            releaseVersion = _releaseVersion
            remoteAccess = _remoteAccess
            scalingConfig = _scalingConfig
            subnetRefs = _subnetRefs
            subnetSelector = _subnetSelector
            subnets = _subnets
            tags = _tags if _tags else {}
            taints = _taints
            updateConfig = _updateConfig
            version = _version
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     NodegroupBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _amiType = "example-value" # Reemplazar valor
#         _capacityType = "example-value" # Reemplazar valor
#         _clusterName = "example-value" # Reemplazar valor
#         _clusterNameRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _clusterNameSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _diskSize = 1 # Reemplazar valor
#         _instanceTypes = [] # Reemplazar valor
#         _launchTemplate = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _nodeRole = "example-value" # Reemplazar valor
#         _nodeRoleRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _nodeRoleSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _releaseVersion = "example-value" # Reemplazar valor
#         _remoteAccess = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _scalingConfig = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _subnetRefs = [] # Reemplazar valor
#         _subnetSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _subnets = [] # Reemplazar valor
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _taints = [] # Reemplazar valor
#         _updateConfig = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _version = "example-value" # Reemplazar valor
#     }
# ]

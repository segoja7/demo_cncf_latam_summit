# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.eks_aws_upbound_io.v1beta1.eks_aws_upbound_io_v1beta1_NodeGroup as nodegroup_schema

schema NodegroupBlueprint(nodegroup_schema.Nodegroup):
    """Este Blueprint simplifica la creación de un recurso Nodegroup,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: nodegroup_schema.NodegroupspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: nodegroup_schema.NodegroupspecWriteconnectionsecrettoref
    _amiType?: str
    _capacityType?: str
    _clusterName?: str
    _clusterNameRef?: nodegroup_schema.NodegroupspecforproviderClusternameref
    _clusterNameSelector?: nodegroup_schema.NodegroupspecforproviderClusternameselector
    _diskSize?: float
    _forceUpdateVersion?: bool
    _instanceTypes?: [str]
    _nodegroupLabels?: {str:str}
    _launchTemplate?: [nodegroup_schema.NodegroupspecforproviderLaunchtemplateitem]
    _nodeRepairConfig?: [nodegroup_schema.NodegroupspecforproviderNoderepairconfigitem]
    _nodeRoleArn?: str
    _nodeRoleArnRef?: nodegroup_schema.NodegroupspecforproviderNoderolearnref
    _nodeRoleArnSelector?: nodegroup_schema.NodegroupspecforproviderNoderolearnselector
    _region: str
    _releaseVersion?: str
    _remoteAccess?: [nodegroup_schema.NodegroupspecforproviderRemoteaccessitem]
    _scalingConfig?: [nodegroup_schema.NodegroupspecforproviderScalingconfigitem]
    _subnetIdRefs?: [nodegroup_schema.NodegroupspecforproviderSubnetidrefsitem]
    _subnetIdSelector?: nodegroup_schema.NodegroupspecforproviderSubnetidselector
    _subnetIds?: [str]
    _tags?: {str:str}
    _taint?: [nodegroup_schema.NodegroupspecforproviderTaintitem]
    _updateConfig?: [nodegroup_schema.NodegroupspecforproviderUpdateconfigitem]
    _version?: str
    _versionRef?: nodegroup_schema.NodegroupspecforproviderVersionref
    _versionSelector?: nodegroup_schema.NodegroupspecforproviderVersionselector

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
        annotations = _annotations
        finalizers = _finalizers
    }
    spec = {
        deletionPolicy = _deletionPolicy
        initProvider = _initProvider
        managementPolicies = _managementPolicies
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            amiType = _amiType
            capacityType = _capacityType
            clusterName = _clusterName
            clusterNameRef = _clusterNameRef
            clusterNameSelector = _clusterNameSelector
            diskSize = _diskSize
            forceUpdateVersion = _forceUpdateVersion
            instanceTypes = _instanceTypes
            labels = _nodegroupLabels
            launchTemplate = _launchTemplate
            nodeRepairConfig = _nodeRepairConfig
            nodeRoleArn = _nodeRoleArn
            nodeRoleArnRef = _nodeRoleArnRef
            nodeRoleArnSelector = _nodeRoleArnSelector
            region = _region
            releaseVersion = _releaseVersion
            remoteAccess = _remoteAccess
            scalingConfig = _scalingConfig
            subnetIdRefs = _subnetIdRefs
            subnetIdSelector = _subnetIdSelector
            subnetIds = _subnetIds
            tags = _tags
            taint = _taint
            updateConfig = _updateConfig
            version = _version
            versionRef = _versionRef
            versionSelector = _versionSelector
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
#         _annotations = {
#             "app.kubernetes.io/name" = "example-app"
#             "app.kubernetes.io/version" = "1.0.0"
#         } # Reemplazar valor
#         _finalizers = [] # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _deletionPolicy = "example-value" # Reemplazar valor
#         _initProvider = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _managementPolicies = [] # Reemplazar valor
#         _writeConnectionSecretToRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _amiType = "example-value" # Reemplazar valor
#         _capacityType = "example-value" # Reemplazar valor
#         _clusterName = "example-value" # Reemplazar valor
#         _clusterNameRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _clusterNameSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _diskSize = 1.0 # Reemplazar valor
#         _forceUpdateVersion = True # Reemplazar valor
#         _instanceTypes = [] # Reemplazar valor
#         _nodegroupLabels = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _launchTemplate = [] # Reemplazar valor
#         _nodeRepairConfig = [] # Reemplazar valor
#         _nodeRoleArn = "example-value" # Reemplazar valor
#         _nodeRoleArnRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _nodeRoleArnSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _releaseVersion = "example-value" # Reemplazar valor
#         _remoteAccess = [] # Reemplazar valor
#         _scalingConfig = [] # Reemplazar valor
#         _subnetIdRefs = [] # Reemplazar valor
#         _subnetIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _subnetIds = [] # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _taint = [] # Reemplazar valor
#         _updateConfig = [] # Reemplazar valor
#         _version = "example-value" # Reemplazar valor
#         _versionRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _versionSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

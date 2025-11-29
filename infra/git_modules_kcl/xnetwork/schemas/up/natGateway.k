# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_NATGateway as natgateway_schema

schema NatgatewayBlueprint(natgateway_schema.Natgateway):
    """Este Blueprint simplifica la creación de un recurso Natgateway,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: natgateway_schema.NatgatewayspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: natgateway_schema.NatgatewayspecWriteconnectionsecrettoref
    _allocationId?: str
    _allocationIdRef?: natgateway_schema.NatgatewayspecforproviderAllocationidref
    _allocationIdSelector?: natgateway_schema.NatgatewayspecforproviderAllocationidselector
    _connectivityType?: str
    _privateIp?: str
    _region: str
    _secondaryAllocationIds?: [str]
    _secondaryAllocationIdsRefs?: [natgateway_schema.NatgatewayspecforproviderSecondaryallocationidsrefsitem]
    _secondaryAllocationIdsSelector?: natgateway_schema.NatgatewayspecforproviderSecondaryallocationidsselector
    _secondaryPrivateIpAddressCount?: float
    _secondaryPrivateIpAddresses?: [str]
    _subnetId?: str
    _subnetIdRef?: natgateway_schema.NatgatewayspecforproviderSubnetidref
    _subnetIdSelector?: natgateway_schema.NatgatewayspecforproviderSubnetidselector
    _tags?: {str:str}

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
            allocationId = _allocationId
            allocationIdRef = _allocationIdRef
            allocationIdSelector = _allocationIdSelector
            connectivityType = _connectivityType
            privateIp = _privateIp
            region = _region
            secondaryAllocationIds = _secondaryAllocationIds
            secondaryAllocationIdsRefs = _secondaryAllocationIdsRefs
            secondaryAllocationIdsSelector = _secondaryAllocationIdsSelector
            secondaryPrivateIpAddressCount = _secondaryPrivateIpAddressCount
            secondaryPrivateIpAddresses = _secondaryPrivateIpAddresses
            subnetId = _subnetId
            subnetIdRef = _subnetIdRef
            subnetIdSelector = _subnetIdSelector
            tags = _tags
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     NatgatewayBlueprint {
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
#         _allocationId = "example-value" # Reemplazar valor
#         _allocationIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _allocationIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _connectivityType = "example-value" # Reemplazar valor
#         _privateIp = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _secondaryAllocationIds = [] # Reemplazar valor
#         _secondaryAllocationIdsRefs = [] # Reemplazar valor
#         _secondaryAllocationIdsSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _secondaryPrivateIpAddressCount = 1.0 # Reemplazar valor
#         _secondaryPrivateIpAddresses = [] # Reemplazar valor
#         _subnetId = "example-value" # Reemplazar valor
#         _subnetIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _subnetIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#     }
# ]

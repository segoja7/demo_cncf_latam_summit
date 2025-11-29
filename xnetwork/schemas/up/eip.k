# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_EIP as eip_schema

schema EipBlueprint(eip_schema.Eip):
    """Este Blueprint simplifica la creación de un recurso Eip,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: eip_schema.EipspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: eip_schema.EipspecWriteconnectionsecrettoref
    _address?: str
    _associateWithPrivateIp?: str
    _customerOwnedIpv4Pool?: str
    _domain?: str
    _instance?: str
    _instanceRef?: eip_schema.EipspecforproviderInstanceref
    _instanceSelector?: eip_schema.EipspecforproviderInstanceselector
    _ipamPoolId?: str
    _networkBorderGroup?: str
    _networkInterface?: str
    _networkInterfaceRef?: eip_schema.EipspecforproviderNetworkinterfaceref
    _networkInterfaceSelector?: eip_schema.EipspecforproviderNetworkinterfaceselector
    _publicIpv4Pool?: str
    _region: str
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
            address = _address
            associateWithPrivateIp = _associateWithPrivateIp
            customerOwnedIpv4Pool = _customerOwnedIpv4Pool
            domain = _domain
            instance = _instance
            instanceRef = _instanceRef
            instanceSelector = _instanceSelector
            ipamPoolId = _ipamPoolId
            networkBorderGroup = _networkBorderGroup
            networkInterface = _networkInterface
            networkInterfaceRef = _networkInterfaceRef
            networkInterfaceSelector = _networkInterfaceSelector
            publicIpv4Pool = _publicIpv4Pool
            region = _region
            tags = _tags
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     EipBlueprint {
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
#         _address = "example-value" # Reemplazar valor
#         _associateWithPrivateIp = "example-value" # Reemplazar valor
#         _customerOwnedIpv4Pool = "example-value" # Reemplazar valor
#         _domain = "example-value" # Reemplazar valor
#         _instance = "example-value" # Reemplazar valor
#         _instanceRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _instanceSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _ipamPoolId = "example-value" # Reemplazar valor
#         _networkBorderGroup = "example-value" # Reemplazar valor
#         _networkInterface = "example-value" # Reemplazar valor
#         _networkInterfaceRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _networkInterfaceSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _publicIpv4Pool = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#     }
# ]

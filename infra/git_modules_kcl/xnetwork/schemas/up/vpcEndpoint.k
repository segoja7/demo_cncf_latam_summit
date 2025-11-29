# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_VPCEndpoint as vpcendpoint_schema

schema VpcendpointBlueprint(vpcendpoint_schema.Vpcendpoint):
    """Este Blueprint simplifica la creación de un recurso Vpcendpoint,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: vpcendpoint_schema.VpcendpointspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: vpcendpoint_schema.VpcendpointspecWriteconnectionsecrettoref
    _autoAccept?: bool
    _dnsOptions?: [vpcendpoint_schema.VpcendpointspecforproviderDnsoptionsitem]
    _ipAddressType?: str
    _policy?: str
    _privateDnsEnabled?: bool
    _region: str
    _resourceConfigurationArn?: str
    _serviceName?: str
    _serviceNameRef?: vpcendpoint_schema.VpcendpointspecforproviderServicenameref
    _serviceNameSelector?: vpcendpoint_schema.VpcendpointspecforproviderServicenameselector
    _serviceNetworkArn?: str
    _serviceRegion?: str
    _subnetConfiguration?: [vpcendpoint_schema.VpcendpointspecforproviderSubnetconfigurationitem]
    _tags?: {str:str}
    _vpcEndpointType?: str
    _vpcId?: str
    _vpcIdRef?: vpcendpoint_schema.VpcendpointspecforproviderVpcidref
    _vpcIdSelector?: vpcendpoint_schema.VpcendpointspecforproviderVpcidselector

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
            autoAccept = _autoAccept
            dnsOptions = _dnsOptions
            ipAddressType = _ipAddressType
            policy = _policy
            privateDnsEnabled = _privateDnsEnabled
            region = _region
            resourceConfigurationArn = _resourceConfigurationArn
            serviceName = _serviceName
            serviceNameRef = _serviceNameRef
            serviceNameSelector = _serviceNameSelector
            serviceNetworkArn = _serviceNetworkArn
            serviceRegion = _serviceRegion
            subnetConfiguration = _subnetConfiguration
            tags = _tags
            vpcEndpointType = _vpcEndpointType
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     VpcendpointBlueprint {
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
#         _autoAccept = True # Reemplazar valor
#         _dnsOptions = [] # Reemplazar valor
#         _ipAddressType = "example-value" # Reemplazar valor
#         _policy = "example-value" # Reemplazar valor
#         _privateDnsEnabled = True # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _resourceConfigurationArn = "example-value" # Reemplazar valor
#         _serviceName = "example-value" # Reemplazar valor
#         _serviceNameRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _serviceNameSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _serviceNetworkArn = "example-value" # Reemplazar valor
#         _serviceRegion = "example-value" # Reemplazar valor
#         _subnetConfiguration = [] # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _vpcEndpointType = "example-value" # Reemplazar valor
#         _vpcId = "example-value" # Reemplazar valor
#         _vpcIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

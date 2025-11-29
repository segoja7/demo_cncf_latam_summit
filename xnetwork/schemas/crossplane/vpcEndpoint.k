# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1alpha1.ec2_aws_crossplane_io_v1alpha1_VPCEndpoint as vpcendpoint_schema

schema VpcendpointBlueprint(vpcendpoint_schema.Vpcendpoint):
    """Este Blueprint simplifica la creación de un recurso Vpcendpoint,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _dnsOptions?: vpcendpoint_schema.VpcendpointspecforproviderDnsoptions
    _ipAddressType?: str
    _policyDocument?: str
    _privateDNSEnabled?: bool
    _routeTableIdRefs?: [vpcendpoint_schema.VpcendpointspecforproviderRoutetableidrefsitem]
    _routeTableIdSelector?: vpcendpoint_schema.VpcendpointspecforproviderRoutetableidselector
    _routeTableIds?: [str]
    _securityGroupIdRefs?: [vpcendpoint_schema.VpcendpointspecforproviderSecuritygroupidrefsitem]
    _securityGroupIdSelector?: vpcendpoint_schema.VpcendpointspecforproviderSecuritygroupidselector
    _securityGroupIds?: [str]
    _serviceName: str
    _subnetConfigurations?: [vpcendpoint_schema.VpcendpointspecforproviderSubnetconfigurationsitem]
    _subnetIdRefs?: [vpcendpoint_schema.VpcendpointspecforproviderSubnetidrefsitem]
    _subnetIdSelector?: vpcendpoint_schema.VpcendpointspecforproviderSubnetidselector
    _subnetIds?: [str]
    _tagSpecifications?: [vpcendpoint_schema.VpcendpointspecforproviderTagspecificationsitem]
    _tags?: {str:str}
    _vpcEndpointType?: str
    _vpcIdRef?: vpcendpoint_schema.VpcendpointspecforproviderVpcidref
    _vpcIdSelector?: vpcendpoint_schema.VpcendpointspecforproviderVpcidselector
    _region: str
    _vpcId?: str

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            dnsOptions = _dnsOptions
            ipAddressType = _ipAddressType
            policyDocument = _policyDocument
            privateDNSEnabled = _privateDNSEnabled
            routeTableIdRefs = _routeTableIdRefs
            routeTableIdSelector = _routeTableIdSelector
            routeTableIds = _routeTableIds
            securityGroupIdRefs = _securityGroupIdRefs
            securityGroupIdSelector = _securityGroupIdSelector
            securityGroupIds = _securityGroupIds
            serviceName = _serviceName
            subnetConfigurations = _subnetConfigurations
            subnetIdRefs = _subnetIdRefs
            subnetIdSelector = _subnetIdSelector
            subnetIds = _subnetIds
            tagSpecifications = _tagSpecifications
            tags = _tags if _tags else {}
            vpcEndpointType = _vpcEndpointType
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
            region = _region
            vpcId = _vpcId
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
#         _providerConfig = "example-value" # Reemplazar valor
#         _dnsOptions = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _ipAddressType = "example-value" # Reemplazar valor
#         _policyDocument = "example-value" # Reemplazar valor
#         _privateDNSEnabled = True # Reemplazar valor
#         _routeTableIdRefs = [] # Reemplazar valor
#         _routeTableIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _routeTableIds = [] # Reemplazar valor
#         _securityGroupIdRefs = [] # Reemplazar valor
#         _securityGroupIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _securityGroupIds = [] # Reemplazar valor
#         _serviceName = "example-value" # Reemplazar valor
#         _subnetConfigurations = [] # Reemplazar valor
#         _subnetIdRefs = [] # Reemplazar valor
#         _subnetIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _subnetIds = [] # Reemplazar valor
#         _tagSpecifications = [] # Reemplazar valor
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _vpcEndpointType = "example-value" # Reemplazar valor
#         _vpcIdRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _vpcIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _vpcId = "example-value" # Reemplazar valor
#     }
# ]

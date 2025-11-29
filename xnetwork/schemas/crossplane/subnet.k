# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1beta1.ec2_aws_crossplane_io_v1beta1_Subnet as subnet_schema

schema SubnetBlueprint(subnet_schema.Subnet):
    """Este Blueprint simplifica la creación de un recurso Subnet,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _assignIpv6AddressOnCreation?: bool
    _availabilityZone?: str
    _availabilityZoneId?: str
    _cidrBlock: str
    _ipv6CIDRBlock?: str
    _mapPublicIPOnLaunch?: bool
    _region?: str
    _tags?: {str:str}
    _vpcId?: str
    _vpcIdRef?: subnet_schema.SubnetspecforproviderVpcidref
    _vpcIdSelector?: subnet_schema.SubnetspecforproviderVpcidselector

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            assignIpv6AddressOnCreation = _assignIpv6AddressOnCreation
            availabilityZone = _availabilityZone
            availabilityZoneId = _availabilityZoneId
            cidrBlock = _cidrBlock
            ipv6CIDRBlock = _ipv6CIDRBlock
            mapPublicIPOnLaunch = _mapPublicIPOnLaunch
            region = _region
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     SubnetBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _assignIpv6AddressOnCreation = True # Reemplazar valor
#         _availabilityZone = "example-value" # Reemplazar valor
#         _availabilityZoneId = "example-value" # Reemplazar valor
#         _cidrBlock = "example-value" # Reemplazar valor
#         _ipv6CIDRBlock = "example-value" # Reemplazar valor
#         _mapPublicIPOnLaunch = True # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _vpcId = "example-value" # Reemplazar valor
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
#     }
# ]

# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1beta1.ec2_aws_crossplane_io_v1beta1_VPC as vpc_schema

schema VpcBlueprint(vpc_schema.Vpc):
    """Este Blueprint simplifica la creación de un recurso Vpc,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _amazonProvidedIpv6CidrBlock?: bool
    _cidrBlock: str
    _enableDnsHostNames?: bool
    _enableDnsSupport?: bool
    _enableNetworkAddressUsageMetrics?: bool
    _instanceTenancy?: str
    _ipv6CidrBlock?: str
    _ipv6Pool?: str
    _region?: str
    _tags?: {str:str}

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            amazonProvidedIpv6CidrBlock = _amazonProvidedIpv6CidrBlock
            cidrBlock = _cidrBlock
            enableDnsHostNames = _enableDnsHostNames
            enableDnsSupport = _enableDnsSupport
            enableNetworkAddressUsageMetrics = _enableNetworkAddressUsageMetrics
            instanceTenancy = _instanceTenancy
            ipv6CidrBlock = _ipv6CidrBlock
            ipv6Pool = _ipv6Pool
            region = _region
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
items = [
    VpcBlueprint {
        _name = "example-value" # Reemplazar valor
        _namespace = "example-value" # Reemplazar valor
        _labels = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
        _providerConfig = "example-value" # Reemplazar valor
        _amazonProvidedIpv6CidrBlock = True # Reemplazar valor
        _cidrBlock = "example-value" # Reemplazar valor
        _enableDnsHostNames = True # Reemplazar valor
        _enableDnsSupport = True # Reemplazar valor
        _enableNetworkAddressUsageMetrics = True # Reemplazar valor
        _instanceTenancy = "example-value" # Reemplazar valor
        _ipv6CidrBlock = "example-value" # Reemplazar valor
        _ipv6Pool = "example-value" # Reemplazar valor
        _region = "example-value" # Reemplazar valor
        _tags = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
    }
]

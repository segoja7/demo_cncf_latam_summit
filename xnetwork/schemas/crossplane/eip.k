# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1beta1.ec2_aws_crossplane_io_v1beta1_Address as address_schema

schema AddressBlueprint(address_schema.Address):
    """Este Blueprint simplifica la creación de un recurso Address,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _address?: str
    _customerOwnedIPv4Pool?: str
    _domain?: "vpc" | "standard"
    _publicIpv4Pool?: str
    _region: str
    _tags?: {str:str}

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            address = _address
            customerOwnedIPv4Pool = _customerOwnedIPv4Pool
            domain = _domain
            publicIpv4Pool = _publicIpv4Pool
            region = _region
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
items = [
    AddressBlueprint {
        _name = "example-value" # Reemplazar valor
        _namespace = "example-value" # Reemplazar valor
        _labels = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
        _providerConfig = "example-value" # Reemplazar valor
        _address = "example-value" # Reemplazar valor
        _customerOwnedIPv4Pool = "example-value" # Reemplazar valor
        _domain = "vpc" # Reemplazar valor
        _publicIpv4Pool = "example-value" # Reemplazar valor
        _region = "example-value" # Reemplazar valor
        _tags = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
    }
]

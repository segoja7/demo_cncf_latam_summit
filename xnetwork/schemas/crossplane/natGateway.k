# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1beta1.ec2_aws_crossplane_io_v1beta1_NATGateway as natgateway_schema

schema NatgatewayBlueprint(natgateway_schema.Natgateway):
    """Este Blueprint simplifica la creación de un recurso Natgateway,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _allocationId?: str
    _allocationIdRef?: natgateway_schema.NatgatewayspecforproviderAllocationidref
    _allocationIdSelector?: natgateway_schema.NatgatewayspecforproviderAllocationidselector
    _connectivityType?: "public" | "private"
    _region: str
    _subnetId?: str
    _subnetIdRef?: natgateway_schema.NatgatewayspecforproviderSubnetidref
    _subnetIdSelector?: natgateway_schema.NatgatewayspecforproviderSubnetidselector
    _tags?: {str:str}

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            allocationId = _allocationId
            allocationIdRef = _allocationIdRef
            allocationIdSelector = _allocationIdSelector
            connectivityType = _connectivityType
            region = _region
            subnetId = _subnetId
            subnetIdRef = _subnetIdRef
            subnetIdSelector = _subnetIdSelector
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
items = [
    NatgatewayBlueprint {
        _name = "example-value" # Reemplazar valor
        _namespace = "example-value" # Reemplazar valor
        _labels = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
        _providerConfig = "example-value" # Reemplazar valor
        _allocationId = "example-value" # Reemplazar valor
        _allocationIdRef = {
            name = "example-resource-name"
        } # Reemplazar valor
        _allocationIdSelector = {
            matchControllerRef = True
            # OR use matchLabels:
            # matchLabels = {
            #     key = "value"
            # }
        } # Reemplazar valor
        _connectivityType = "public" # Reemplazar valor
        _region = "example-value" # Reemplazar valor
        _subnetId = "example-value" # Reemplazar valor
        _subnetIdRef = {
            name = "example-resource-name"
        } # Reemplazar valor
        _subnetIdSelector = {
            matchControllerRef = True
            # OR use matchLabels:
            # matchLabels = {
            #     key = "value"
            # }
        } # Reemplazar valor
        _tags = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
    }
]

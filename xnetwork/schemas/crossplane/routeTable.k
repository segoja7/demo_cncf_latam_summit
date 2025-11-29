# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1beta1.ec2_aws_crossplane_io_v1beta1_RouteTable as routetable_schema

schema RoutetableBlueprint(routetable_schema.Routetable):
    """Este Blueprint simplifica la creación de un recurso Routetable,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _associations: [routetable_schema.RoutetablespecforproviderAssociationsitem]
    _ignoreRoutes?: bool
    _region: str
    _routes?: [routetable_schema.RoutetablespecforproviderRoutesitem]
    _vpcId?: str
    _vpcIdRef?: routetable_schema.RoutetablespecforproviderVpcidref
    _vpcIdSelector?: routetable_schema.RoutetablespecforproviderVpcidselector
    _tags?: {str:str}

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            associations = _associations
            ignoreRoutes = _ignoreRoutes
            region = _region
            routes = _routes
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     RoutetableBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _associations = [] # Reemplazar valor
#         _ignoreRoutes = True # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _routes = [] # Reemplazar valor
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
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#     }
# ]

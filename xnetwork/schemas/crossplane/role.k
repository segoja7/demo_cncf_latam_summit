# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.iam_aws_crossplane_io.v1beta1.iam_aws_crossplane_io_v1beta1_Role as role_schema

schema RoleBlueprint(role_schema.Role):
    """Este Blueprint simplifica la creación de un recurso Role,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _assumeRolePolicyDocument: str
    _description?: str
    _maxSessionDuration?: int
    _tags?: {str:str}

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            assumeRolePolicyDocument = _assumeRolePolicyDocument
            description = _description
            maxSessionDuration = _maxSessionDuration
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     RoleBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _assumeRolePolicyDocument = "example-value" # Reemplazar valor
#         _description = "example-value" # Reemplazar valor
#         _maxSessionDuration = 1 # Reemplazar valor
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#     }
# ]

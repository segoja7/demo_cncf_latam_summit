# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.kms_aws_crossplane_io.v1alpha1.kms_aws_crossplane_io_v1alpha1_Alias as alias_schema

schema AliasBlueprint(alias_schema.Alias):
    """Este Blueprint simplifica la creación de un recurso Alias,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _region: str
    _targetKeyId?: str
    _targetKeyIdRef?: alias_schema.AliasspecforproviderTargetkeyidref
    _targetKeyIdSelector?: alias_schema.AliasspecforproviderTargetkeyidselector

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            region = _region
            targetKeyId = _targetKeyId
            targetKeyIdRef = _targetKeyIdRef
            targetKeyIdSelector = _targetKeyIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     AliasBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _targetKeyId = "example-value" # Reemplazar valor
#         _targetKeyIdRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _targetKeyIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#     }
# ]

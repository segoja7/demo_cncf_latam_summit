# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.cloudwatchlogs_aws_crossplane_io.v1alpha1.cloudwatchlogs_aws_crossplane_io_v1alpha1_LogGroup as loggroup_schema

schema LoggroupBlueprint(loggroup_schema.Loggroup):
    """Este Blueprint simplifica la creación de un recurso Loggroup,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _kmsKeyID?: str
    _kmsKeyIDRef?: loggroup_schema.LoggroupspecforproviderKmskeyidref
    _kmsKeyIDSelector?: loggroup_schema.LoggroupspecforproviderKmskeyidselector
    _logGroupName: str
    _region: str
    _retentionInDays?: int
    _tags?: {str:str}

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            kmsKeyID = _kmsKeyID
            kmsKeyIDRef = _kmsKeyIDRef
            kmsKeyIDSelector = _kmsKeyIDSelector
            logGroupName = _logGroupName
            region = _region
            retentionInDays = _retentionInDays
            tags = _tags if _tags else {}
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     LoggroupBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _kmsKeyID = "example-value" # Reemplazar valor
#         _kmsKeyIDRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _kmsKeyIDSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _logGroupName = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _retentionInDays = 1 # Reemplazar valor
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#     }
# ]

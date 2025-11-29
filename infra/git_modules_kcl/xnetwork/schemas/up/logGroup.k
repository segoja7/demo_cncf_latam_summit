# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.cloudwatchlogs_aws_upbound_io.v1beta1.cloudwatchlogs_aws_upbound_io_v1beta1_Group as group_schema

schema GroupBlueprint(group_schema.Group):
    """Este Blueprint simplifica la creación de un recurso Group,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: group_schema.GroupspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: group_schema.GroupspecWriteconnectionsecrettoref
    _kmsKeyId?: str
    _kmsKeyIdRef?: group_schema.GroupspecforproviderKmskeyidref
    _kmsKeyIdSelector?: group_schema.GroupspecforproviderKmskeyidselector
    _logGroupClass?: str
    _region: str
    _retentionInDays?: float
    _skipDestroy?: bool
    _tags?: {str:str}

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
            kmsKeyId = _kmsKeyId
            kmsKeyIdRef = _kmsKeyIdRef
            kmsKeyIdSelector = _kmsKeyIdSelector
            logGroupClass = _logGroupClass
            region = _region
            retentionInDays = _retentionInDays
            skipDestroy = _skipDestroy
            tags = _tags
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     GroupBlueprint {
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
#         _kmsKeyId = "example-value" # Reemplazar valor
#         _kmsKeyIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _kmsKeyIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _logGroupClass = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _retentionInDays = 1.0 # Reemplazar valor
#         _skipDestroy = True # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#     }
# ]

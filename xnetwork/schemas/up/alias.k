# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.kms_aws_upbound_io.v1beta1.kms_aws_upbound_io_v1beta1_Alias as alias_schema

schema AliasBlueprint(alias_schema.Alias):
    """Este Blueprint simplifica la creación de un recurso Alias,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: alias_schema.AliasspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: alias_schema.AliasspecWriteconnectionsecrettoref
    _region: str
    _targetKeyId?: str
    _targetKeyIdRef?: alias_schema.AliasspecforproviderTargetkeyidref
    _targetKeyIdSelector?: alias_schema.AliasspecforproviderTargetkeyidselector

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
#         _region = "example-value" # Reemplazar valor
#         _targetKeyId = "example-value" # Reemplazar valor
#         _targetKeyIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _targetKeyIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

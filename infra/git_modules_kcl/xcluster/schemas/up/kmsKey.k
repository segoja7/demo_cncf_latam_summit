# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.kms_aws_upbound_io.v1beta1.kms_aws_upbound_io_v1beta1_Key as key_schema

schema KeyBlueprint(key_schema.Key):
    """Este Blueprint simplifica la creación de un recurso Key,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: key_schema.KeyspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: key_schema.KeyspecWriteconnectionsecrettoref
    _bypassPolicyLockoutSafetyCheck?: bool
    _customKeyStoreId?: str
    _customerMasterKeySpec?: str
    _deletionWindowInDays?: float
    _description?: str
    _enableKeyRotation?: bool
    _isEnabled?: bool
    _keyUsage?: str
    _multiRegion?: bool
    _policy?: str
    _region: str
    _rotationPeriodInDays?: float
    _tags?: {str:str}
    _xksKeyId?: str

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
            bypassPolicyLockoutSafetyCheck = _bypassPolicyLockoutSafetyCheck
            customKeyStoreId = _customKeyStoreId
            customerMasterKeySpec = _customerMasterKeySpec
            deletionWindowInDays = _deletionWindowInDays
            description = _description
            enableKeyRotation = _enableKeyRotation
            isEnabled = _isEnabled
            keyUsage = _keyUsage
            multiRegion = _multiRegion
            policy = _policy
            region = _region
            rotationPeriodInDays = _rotationPeriodInDays
            tags = _tags
            xksKeyId = _xksKeyId
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     KeyBlueprint {
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
#         _bypassPolicyLockoutSafetyCheck = True # Reemplazar valor
#         _customKeyStoreId = "example-value" # Reemplazar valor
#         _customerMasterKeySpec = "example-value" # Reemplazar valor
#         _deletionWindowInDays = 1.0 # Reemplazar valor
#         _description = "example-value" # Reemplazar valor
#         _enableKeyRotation = True # Reemplazar valor
#         _isEnabled = True # Reemplazar valor
#         _keyUsage = "example-value" # Reemplazar valor
#         _multiRegion = True # Reemplazar valor
#         _policy = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _rotationPeriodInDays = 1.0 # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _xksKeyId = "example-value" # Reemplazar valor
#     }
# ]

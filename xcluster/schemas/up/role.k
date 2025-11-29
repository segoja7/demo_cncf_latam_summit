# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.iam_aws_upbound_io.v1beta1.iam_aws_upbound_io_v1beta1_Role as role_schema

schema RoleBlueprint(role_schema.Role):
    """Este Blueprint simplifica la creación de un recurso Role,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: role_schema.RolespecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: role_schema.RolespecWriteconnectionsecrettoref
    _assumeRolePolicy?: str
    _description?: str
    _forceDetachPolicies?: bool
    _inlinePolicy?: [role_schema.RolespecforproviderInlinepolicyitem]
    _managedPolicyArns?: [str]
    _managedPolicyArnsRefs?: [role_schema.RolespecforproviderManagedpolicyarnsrefsitem]
    _managedPolicyArnsSelector?: role_schema.RolespecforproviderManagedpolicyarnsselector
    _maxSessionDuration?: float
    _path?: str
    _permissionsBoundary?: str
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
            assumeRolePolicy = _assumeRolePolicy
            description = _description
            forceDetachPolicies = _forceDetachPolicies
            inlinePolicy = _inlinePolicy
            managedPolicyArns = _managedPolicyArns
            managedPolicyArnsRefs = _managedPolicyArnsRefs
            managedPolicyArnsSelector = _managedPolicyArnsSelector
            maxSessionDuration = _maxSessionDuration
            path = _path
            permissionsBoundary = _permissionsBoundary
            tags = _tags
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
#         _assumeRolePolicy = "example-value" # Reemplazar valor
#         _description = "example-value" # Reemplazar valor
#         _forceDetachPolicies = True # Reemplazar valor
#         _inlinePolicy = [] # Reemplazar valor
#         _managedPolicyArns = [] # Reemplazar valor
#         _managedPolicyArnsRefs = [] # Reemplazar valor
#         _managedPolicyArnsSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _maxSessionDuration = 1.0 # Reemplazar valor
#         _path = "example-value" # Reemplazar valor
#         _permissionsBoundary = "example-value" # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#     }
# ]

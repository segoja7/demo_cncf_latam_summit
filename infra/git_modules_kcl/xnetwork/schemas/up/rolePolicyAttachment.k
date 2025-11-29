# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.iam_aws_upbound_io.v1beta1.iam_aws_upbound_io_v1beta1_RolePolicyAttachment as rolepolicyattachment_schema

schema RolepolicyattachmentBlueprint(rolepolicyattachment_schema.Rolepolicyattachment):
    """Este Blueprint simplifica la creación de un recurso Rolepolicyattachment,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: rolepolicyattachment_schema.RolepolicyattachmentspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: rolepolicyattachment_schema.RolepolicyattachmentspecWriteconnectionsecrettoref
    _policyArn?: str
    _policyArnRef?: rolepolicyattachment_schema.RolepolicyattachmentspecforproviderPolicyarnref
    _policyArnSelector?: rolepolicyattachment_schema.RolepolicyattachmentspecforproviderPolicyarnselector
    _role?: str
    _roleRef?: rolepolicyattachment_schema.RolepolicyattachmentspecforproviderRoleref
    _roleSelector?: rolepolicyattachment_schema.RolepolicyattachmentspecforproviderRoleselector

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
            policyArn = _policyArn
            policyArnRef = _policyArnRef
            policyArnSelector = _policyArnSelector
            role = _role
            roleRef = _roleRef
            roleSelector = _roleSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     RolepolicyattachmentBlueprint {
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
#         _policyArn = "example-value" # Reemplazar valor
#         _policyArnRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _policyArnSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _role = "example-value" # Reemplazar valor
#         _roleRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _roleSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

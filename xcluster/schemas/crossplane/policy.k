# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.iam_aws_crossplane_io.v1beta1.iam_aws_crossplane_io_v1beta1_Policy as policy_schema

schema PolicyBlueprint(policy_schema.Policy):
    """Este Blueprint simplifica la creación de un recurso Policy,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _publishConnectionDetailsTo?: policy_schema.PolicyspecPublishconnectiondetailsto
    _writeConnectionSecretToRef?: policy_schema.PolicyspecWriteconnectionsecrettoref
    _description?: str
    _document: str
    _path?: str
    _tags?: {str:str}

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
        annotations = _annotations
    }
    spec = {
        deletionPolicy = _deletionPolicy
        managementPolicies = _managementPolicies
        publishConnectionDetailsTo = _publishConnectionDetailsTo
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            description = _description
            document = _document
            name = _name
            path = _path
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     PolicyBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _annotations = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _deletionPolicy = "example-value" # Reemplazar valor
#         _managementPolicies = [] # Reemplazar valor # Reemplazar valor
#         _publishConnectionDetailsTo = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _writeConnectionSecretToRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _description = "example-value" # Reemplazar valor
#         _document = "example-value" # Reemplazar valor
#         _path = "example-value" # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#     }
# ]

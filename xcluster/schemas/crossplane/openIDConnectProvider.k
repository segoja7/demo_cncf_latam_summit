# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.iam_aws_crossplane_io.v1beta1.iam_aws_crossplane_io_v1beta1_OpenIDConnectProvider as openidconnectprovider_schema

schema OpenidconnectproviderBlueprint(openidconnectprovider_schema.Openidconnectprovider):
    """Este Blueprint simplifica la creación de un recurso Openidconnectprovider,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _publishConnectionDetailsTo?: openidconnectprovider_schema.OpenidconnectproviderspecPublishconnectiondetailsto
    _writeConnectionSecretToRef?: openidconnectprovider_schema.OpenidconnectproviderspecWriteconnectionsecrettoref
    _clientIDList?: [str]
    _tags?: {str:str}
    _thumbprintList: [str]
    _url: str

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
            clientIDList = _clientIDList
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
            thumbprintList = _thumbprintList
            url = _url
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     OpenidconnectproviderBlueprint {
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
#         _clientIDList = [] # Reemplazar valor # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _thumbprintList = [] # Reemplazar valor # Reemplazar valor
#         _url = "example-value" # Reemplazar valor
#     }
# ]

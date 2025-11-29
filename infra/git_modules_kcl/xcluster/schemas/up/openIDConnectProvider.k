# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.iam_aws_upbound_io.v1beta1.iam_aws_upbound_io_v1beta1_OpenIDConnectProvider as openidconnectprovider_schema

schema OpenidconnectproviderBlueprint(openidconnectprovider_schema.Openidconnectprovider):
    """Este Blueprint simplifica la creación de un recurso Openidconnectprovider,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: openidconnectprovider_schema.OpenidconnectproviderspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: openidconnectprovider_schema.OpenidconnectproviderspecWriteconnectionsecrettoref
    _clientIdList?: [str]
    _tags?: {str:str}
    _thumbprintList?: [str]
    _url?: str

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
            clientIdList = _clientIdList
            tags = _tags
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
#         _clientIdList = [] # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _thumbprintList = [] # Reemplazar valor
#         _url = "example-value" # Reemplazar valor
#     }
# ]

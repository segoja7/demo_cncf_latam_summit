# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.kubernetes_crossplane_io.v1alpha1.kubernetes_crossplane_io_v1alpha1_ProviderConfig as providerconfig_schema

schema ProviderconfigBlueprint(providerconfig_schema.Providerconfig):
    """Este Blueprint simplifica la creación de un recurso Providerconfig,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _credentials: providerconfig_schema.ProviderconfigspecCredentials
    _identity?: providerconfig_schema.ProviderconfigspecIdentity

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
        annotations = _annotations
    }
    spec = {
        credentials = _credentials
        identity = _identity
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     ProviderconfigBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _annotations = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _credentials = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _identity = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

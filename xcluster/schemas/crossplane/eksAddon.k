# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.eks_aws_crossplane_io.v1alpha1.eks_aws_crossplane_io_v1alpha1_Addon as addon_schema

schema AddonBlueprint(addon_schema.Addon):
    """Este Blueprint simplifica la creación de un recurso Addon,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _addonName: str
    _addonVersion?: str
    _clusterName?: str
    _clusterNameRef?: addon_schema.AddonspecforproviderClusternameref
    _clusterNameSelector?: addon_schema.AddonspecforproviderClusternameselector
    _configurationValues?: str
    _region: str
    _resolveConflicts?: str
    _serviceAccountRoleARN?: str
    _tags?: {str:str}

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            addonName = _addonName
            addonVersion = _addonVersion
            clusterName = _clusterName
            clusterNameRef = _clusterNameRef
            clusterNameSelector = _clusterNameSelector
            configurationValues = _configurationValues
            region = _region
            resolveConflicts = _resolveConflicts
            serviceAccountRoleARN = _serviceAccountRoleARN
            tags = _tags if _tags else {}
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     AddonBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _addonName = "example-value" # Reemplazar valor
#         _addonVersion = "example-value" # Reemplazar valor
#         _clusterName = "example-value" # Reemplazar valor
#         _clusterNameRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _clusterNameSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _configurationValues = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _resolveConflicts = "example-value" # Reemplazar valor
#         _serviceAccountRoleARN = "example-value" # Reemplazar valor
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#     }
# ]

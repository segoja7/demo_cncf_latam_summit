# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.helm_crossplane_io.v1alpha1.helm_crossplane_io_v1alpha1_Release as release_schema

schema ReleaseBlueprint(release_schema.Release):
    """Este Blueprint simplifica la creación de un recurso Release,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _rollbackLimit?: int
    _writeConnectionSecretToRef?: release_schema.ReleasespecWriteconnectionsecrettoref
    _chart: release_schema.ReleasespecforproviderChart
    _namespace: str
    _patchesFrom?: [release_schema.ReleasespecforproviderPatchesfromitem]
    _set?: [release_schema.ReleasespecforproviderSetitem]
    _values?: any
    _valuesFrom?: [release_schema.ReleasespecforproviderValuesfromitem]
    _wait?: bool

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
        rollbackLimit = _rollbackLimit
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            chart = _chart
            namespace = _namespace
            patchesFrom = _patchesFrom
            set = _set
            values = _values
            valuesFrom = _valuesFrom
            wait = _wait
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     ReleaseBlueprint {
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
#         _providerConfig = "example-value" # Reemplazar valor
#         _deletionPolicy = "example-value" # Reemplazar valor
#         _managementPolicies = [] # Reemplazar valor
#         _rollbackLimit = 1 # Reemplazar valor
#         _writeConnectionSecretToRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _chart = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _patchesFrom = [] # Reemplazar valor
#         _set = [] # Reemplazar valor
#         _values = "example-value" # Reemplazar valor
#         _valuesFrom = [] # Reemplazar valor
#         _wait = True # Reemplazar valor
#     }
# ]

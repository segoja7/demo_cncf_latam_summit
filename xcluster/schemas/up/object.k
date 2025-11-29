# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.kubernetes_crossplane_io.v1alpha1.kubernetes_crossplane_io_v1alpha1_Object as object_schema

schema ObjectBlueprint(object_schema.Object):
    """Este Blueprint simplifica la creación de un recurso Object,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _providerConfig: str
    _connectionDetails?: [object_schema.ObjectspecConnectiondetailsitem]
    _deletionPolicy?: "Orphan" | "Delete"
    _managementPolicy?: "Default" | "ObserveCreateUpdate" | "ObserveDelete" | "Observe"
    _providerRef?: object_schema.ObjectspecProviderref
    _readiness?: object_schema.ObjectspecReadiness
    _references?: [object_schema.ObjectspecReferencesitem]
    _watch?: bool
    _writeConnectionSecretToRef?: object_schema.ObjectspecWriteconnectionsecrettoref
    _manifest: any

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
        annotations = _annotations
    }
    spec = {
        connectionDetails = _connectionDetails
        deletionPolicy = _deletionPolicy
        managementPolicy = _managementPolicy
        providerRef = _providerRef
        readiness = _readiness
        references = _references
        watch = _watch
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            manifest = _manifest
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
items = [
    ObjectBlueprint {
        _name = "example-value" # Reemplazar valor
        # _namespace = "example-value" # Reemplazar valor
        # _labels = {
        #     Name = "example-name"
        #     Environment = "development"
        # } # Reemplazar valor
        # _annotations = {
        #     Name = "example-name"
        #     Environment = "development"
        # } # Reemplazar valor
        _providerConfig = "example-value" # Reemplazar valor
        # _connectionDetails = [] # Reemplazar valor
        # _deletionPolicy = "example-value" # Reemplazar valor
        # _managementPolicy = "example-value" # Reemplazar valor
        _providerRef = {
            name = "example-resource-name"
        } # Reemplazar valor
        _readiness = {
            # Configure object fields as needed
        } # Reemplazar valor
        _references = [
            {
                patchesFrom = {
                    apiVersion = "v1"
                    kind = "Secret"
                    name = "name-of-secret"
                    namespace = "default"
                    fieldPath = "data"
                }
                toFieldPath = "data"
            }
        ] # Reemplazar valor
        # _watch = True # Reemplazar valor
        # _writeConnectionSecretToRef = {
        #     name = "example-resource-name"
        # } # Reemplazar valor
        _manifest = {
            apiVersion = "v1"
            kind = "Secret"
            metadata = {
                name = "rds-credentials"
                labels = {} # Reemplazar con labels apropiados
                namespace = "default"
            }
        }
    }
]

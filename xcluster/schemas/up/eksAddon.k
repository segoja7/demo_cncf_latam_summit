# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.eks_aws_upbound_io.v1beta1.eks_aws_upbound_io_v1beta1_Addon as addon_schema

schema AddonBlueprint(addon_schema.Addon):
    """Este Blueprint simplifica la creación de un recurso Addon,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: addon_schema.AddonspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: addon_schema.AddonspecWriteconnectionsecrettoref
    _addonName?: str
    _addonVersion?: str
    _clusterName?: str
    _clusterNameRef?: addon_schema.AddonspecforproviderClusternameref
    _clusterNameSelector?: addon_schema.AddonspecforproviderClusternameselector
    _configurationValues?: str
    _podIdentityAssociation?: [addon_schema.AddonspecforproviderPodidentityassociationitem]
    _preserve?: bool
    _region: str
    _resolveConflictsOnCreate?: str
    _resolveConflictsOnUpdate?: str
    _serviceAccountRoleArn?: str
    _serviceAccountRoleArnRef?: addon_schema.AddonspecforproviderServiceaccountrolearnref
    _serviceAccountRoleArnSelector?: addon_schema.AddonspecforproviderServiceaccountrolearnselector
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
            addonName = _addonName
            addonVersion = _addonVersion
            clusterName = _clusterName
            clusterNameRef = _clusterNameRef
            clusterNameSelector = _clusterNameSelector
            configurationValues = _configurationValues
            podIdentityAssociation = _podIdentityAssociation
            preserve = _preserve
            region = _region
            resolveConflictsOnCreate = _resolveConflictsOnCreate
            resolveConflictsOnUpdate = _resolveConflictsOnUpdate
            serviceAccountRoleArn = _serviceAccountRoleArn
            serviceAccountRoleArnRef = _serviceAccountRoleArnRef
            serviceAccountRoleArnSelector = _serviceAccountRoleArnSelector
            tags = _tags
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
#         _addonName = "example-value" # Reemplazar valor
#         _addonVersion = "example-value" # Reemplazar valor
#         _clusterName = "example-value" # Reemplazar valor
#         _clusterNameRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _clusterNameSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _configurationValues = "example-value" # Reemplazar valor
#         _podIdentityAssociation = [] # Reemplazar valor
#         _preserve = True # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _resolveConflictsOnCreate = "example-value" # Reemplazar valor
#         _resolveConflictsOnUpdate = "example-value" # Reemplazar valor
#         _serviceAccountRoleArn = "example-value" # Reemplazar valor
#         _serviceAccountRoleArnRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _serviceAccountRoleArnSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#     }
# ]

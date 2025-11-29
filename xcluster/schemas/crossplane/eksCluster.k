# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.eks_aws_crossplane_io.v1beta1.eks_aws_crossplane_io_v1beta1_Cluster as cluster_schema

schema ClusterBlueprint(cluster_schema.Cluster):
    """Este Blueprint simplifica la creación de un recurso Cluster,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _publishConnectionDetailsTo?: cluster_schema.ClusterspecPublishconnectiondetailsto
    _writeConnectionSecretToRef?: cluster_schema.ClusterspecWriteconnectionsecrettoref
    _accessConfig?: cluster_schema.ClusterspecforproviderAccessconfig
    _encryptionConfig?: [cluster_schema.ClusterspecforproviderEncryptionconfigitem]
    _kubernetesNetworkConfig?: cluster_schema.ClusterspecforproviderKubernetesnetworkconfig
    _logging?: cluster_schema.ClusterspecforproviderLogging
    _outpostConfig?: cluster_schema.ClusterspecforproviderOutpostconfig
    _region?: str
    _resourcesVpcConfig: cluster_schema.ClusterspecforproviderResourcesvpcconfig
    _roleArn?: str
    _roleArnRef?: cluster_schema.ClusterspecforproviderRolearnref
    _roleArnSelector?: cluster_schema.ClusterspecforproviderRolearnselector
    _tags?: {str:str}
    _version?: str

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        deletionPolicy = _deletionPolicy
        managementPolicies = _managementPolicies
        publishConnectionDetailsTo = _publishConnectionDetailsTo
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            accessConfig = _accessConfig
            encryptionConfig = _encryptionConfig
            kubernetesNetworkConfig = _kubernetesNetworkConfig
            logging = _logging
            outpostConfig = _outpostConfig
            region = _region
            resourcesVpcConfig = _resourcesVpcConfig
            roleArn = _roleArn
            roleArnRef = _roleArnRef
            roleArnSelector = _roleArnSelector
            tags = _tags if _tags else {}
            version = _version
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     ClusterBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _deletionPolicy = "example-value" # Reemplazar valor
#         _managementPolicies = [] # Reemplazar valor
#         _publishConnectionDetailsTo = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _writeConnectionSecretToRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _accessConfig = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _encryptionConfig = [] # Reemplazar valor
#         _kubernetesNetworkConfig = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _logging = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _outpostConfig = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _resourcesVpcConfig = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _roleArn = "example-value" # Reemplazar valor
#         _roleArnRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _roleArnSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _version = "example-value" # Reemplazar valor
#     }
# ]

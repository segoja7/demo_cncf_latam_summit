# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.eks_aws_upbound_io.v1beta1.eks_aws_upbound_io_v1beta1_ClusterAuth as clusterauth_schema

schema ClusterauthBlueprint(clusterauth_schema.Clusterauth):
    """Este Blueprint simplifica la creación de un recurso Clusterauth,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: clusterauth_schema.ClusterauthspecWriteconnectionsecrettoref
    _clusterName?: str
    _clusterNameRef?: clusterauth_schema.ClusterauthspecforproviderClusternameref
    _clusterNameSelector?: clusterauth_schema.ClusterauthspecforproviderClusternameselector
    _refreshPeriod?: str
    _region: str

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
        managementPolicies = _managementPolicies
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            clusterName = _clusterName
            clusterNameRef = _clusterNameRef
            clusterNameSelector = _clusterNameSelector
            refreshPeriod = _refreshPeriod
            region = _region
        }
        providerConfigRef.name = _providerConfig
    }

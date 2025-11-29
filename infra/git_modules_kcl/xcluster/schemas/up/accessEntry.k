# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.eks_aws_upbound_io.v1beta1.eks_aws_upbound_io_v1beta1_AccessEntry as accessentry_schema

schema AccessentryBlueprint(accessentry_schema.Accessentry):
    """Este Blueprint simplifica la creación de un recurso Accessentry,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: accessentry_schema.AccessentryspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: accessentry_schema.AccessentryspecWriteconnectionsecrettoref
    _clusterName?: str
    _clusterNameRef?: accessentry_schema.AccessentryspecforproviderClusternameref
    _clusterNameSelector?: accessentry_schema.AccessentryspecforproviderClusternameselector
    _kubernetesGroups?: [str]
    _principalArn?: str
    _principalArnFromRoleRef?: accessentry_schema.AccessentryspecforproviderPrincipalarnfromroleref
    _principalArnFromRoleSelector?: accessentry_schema.AccessentryspecforproviderPrincipalarnfromroleselector
    _region: str
    _tags?: {str:str}
    _type?: str
    _userName?: str

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
            clusterName = _clusterName
            clusterNameRef = _clusterNameRef
            clusterNameSelector = _clusterNameSelector
            kubernetesGroups = _kubernetesGroups
            principalArn = _principalArn
            principalArnFromRoleRef = _principalArnFromRoleRef
            principalArnFromRoleSelector = _principalArnFromRoleSelector
            region = _region
            tags = _tags
            type = _type
            userName = _userName
        }
        providerConfigRef.name = _providerConfig
    }

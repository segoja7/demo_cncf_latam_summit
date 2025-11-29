# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.eks_aws_upbound_io.v1beta1.eks_aws_upbound_io_v1beta1_AccessPolicyAssociation as accesspolicyassociation_schema

schema AccesspolicyassociationBlueprint(accesspolicyassociation_schema.Accesspolicyassociation):
    """Este Blueprint simplifica la creación de un recurso Accesspolicyassociation,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: accesspolicyassociation_schema.AccesspolicyassociationspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: accesspolicyassociation_schema.AccesspolicyassociationspecWriteconnectionsecrettoref
    _accessScope?: accesspolicyassociation_schema.AccesspolicyassociationspecforproviderAccessscope
    _clusterName?: str
    _clusterNameRef?: accesspolicyassociation_schema.AccesspolicyassociationspecforproviderClusternameref
    _clusterNameSelector?: accesspolicyassociation_schema.AccesspolicyassociationspecforproviderClusternameselector
    _policyArn: str
    _principalArn?: str
    _principalArnRef?: accesspolicyassociation_schema.AccesspolicyassociationspecforproviderPrincipalarnref
    _principalArnSelector?: accesspolicyassociation_schema.AccesspolicyassociationspecforproviderPrincipalarnselector
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
        initProvider = _initProvider
        managementPolicies = _managementPolicies
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            accessScope = _accessScope
            clusterName = _clusterName
            clusterNameRef = _clusterNameRef
            clusterNameSelector = _clusterNameSelector
            policyArn = _policyArn
            principalArn = _principalArn
            principalArnRef = _principalArnRef
            principalArnSelector = _principalArnSelector
            region = _region
        }
        providerConfigRef.name = _providerConfig
    }

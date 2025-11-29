# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_SecurityGroup as securitygroup_schema

schema SecuritygroupBlueprint(securitygroup_schema.Securitygroup):
    """Este Blueprint simplifica la creación de un recurso Securitygroup,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _metadataName: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: securitygroup_schema.SecuritygroupspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: securitygroup_schema.SecuritygroupspecWriteconnectionsecrettoref
    _description?: str
    _name?: str
    _region: str
    _revokeRulesOnDelete?: bool
    _tags?: {str:str}
    _vpcId?: str
    _vpcIdRef?: securitygroup_schema.SecuritygroupspecforproviderVpcidref
    _vpcIdSelector?: securitygroup_schema.SecuritygroupspecforproviderVpcidselector

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _metadataName
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
            description = _description
            name = _name
            region = _region
            revokeRulesOnDelete = _revokeRulesOnDelete
            tags = _tags
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

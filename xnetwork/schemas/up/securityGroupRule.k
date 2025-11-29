# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_SecurityGroupRule as securitygrouprule_schema

schema SecuritygroupruleBlueprint(securitygrouprule_schema.Securitygrouprule):
    """Este Blueprint simplifica la creación de un recurso Securitygrouprule,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: securitygrouprule_schema.SecuritygrouprulespecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: securitygrouprule_schema.SecuritygrouprulespecWriteconnectionsecrettoref
    _cidrBlocks?: [str]
    _cidrBlocksRefs?: [securitygrouprule_schema.SecuritygrouprulespecforproviderCidrblocksrefsitem]
    _cidrBlocksSelector?: securitygrouprule_schema.SecuritygrouprulespecforproviderCidrblocksselector
    _description?: str
    _fromPort?: float
    _ipv6CidrBlocks?: [str]
    _ipv6CidrBlocksRefs?: [securitygrouprule_schema.SecuritygrouprulespecforproviderIpv6Cidrblocksrefsitem]
    _ipv6CidrBlocksSelector?: securitygrouprule_schema.SecuritygrouprulespecforproviderIpv6Cidrblocksselector
    _prefixListIdRefs?: [securitygrouprule_schema.SecuritygrouprulespecforproviderPrefixlistidrefsitem]
    _prefixListIdSelector?: securitygrouprule_schema.SecuritygrouprulespecforproviderPrefixlistidselector
    _prefixListIds?: [str]
    _protocol?: str
    _region: str
    _securityGroupId?: str
    _securityGroupIdRef?: securitygrouprule_schema.SecuritygrouprulespecforproviderSecuritygroupidref
    _securityGroupIdSelector?: securitygrouprule_schema.SecuritygrouprulespecforproviderSecuritygroupidselector
    _self?: bool
    _sourceSecurityGroupId?: str
    _sourceSecurityGroupIdRef?: securitygrouprule_schema.SecuritygrouprulespecforproviderSourcesecuritygroupidref
    _sourceSecurityGroupIdSelector?: securitygrouprule_schema.SecuritygrouprulespecforproviderSourcesecuritygroupidselector
    _toPort?: float
    _type?: str

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
            cidrBlocks = _cidrBlocks
            cidrBlocksRefs = _cidrBlocksRefs
            cidrBlocksSelector = _cidrBlocksSelector
            description = _description
            fromPort = _fromPort
            ipv6CidrBlocks = _ipv6CidrBlocks
            ipv6CidrBlocksRefs = _ipv6CidrBlocksRefs
            ipv6CidrBlocksSelector = _ipv6CidrBlocksSelector
            prefixListIdRefs = _prefixListIdRefs
            prefixListIdSelector = _prefixListIdSelector
            prefixListIds = _prefixListIds
            protocol = _protocol
            region = _region
            securityGroupId = _securityGroupId
            securityGroupIdRef = _securityGroupIdRef
            securityGroupIdSelector = _securityGroupIdSelector
            self = _self
            sourceSecurityGroupId = _sourceSecurityGroupId
            sourceSecurityGroupIdRef = _sourceSecurityGroupIdRef
            sourceSecurityGroupIdSelector = _sourceSecurityGroupIdSelector
            toPort = _toPort
            type = _type
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     SecuritygroupruleBlueprint {
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
#         _cidrBlocks = [] # Reemplazar valor
#         _cidrBlocksRefs = [] # Reemplazar valor
#         _cidrBlocksSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _description = "example-value" # Reemplazar valor
#         _fromPort = 1.0 # Reemplazar valor
#         _ipv6CidrBlocks = [] # Reemplazar valor
#         _ipv6CidrBlocksRefs = [] # Reemplazar valor
#         _ipv6CidrBlocksSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _prefixListIdRefs = [] # Reemplazar valor
#         _prefixListIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _prefixListIds = [] # Reemplazar valor
#         _protocol = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _securityGroupId = "example-value" # Reemplazar valor
#         _securityGroupIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _securityGroupIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _self = True # Reemplazar valor
#         _sourceSecurityGroupId = "example-value" # Reemplazar valor
#         _sourceSecurityGroupIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _sourceSecurityGroupIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _toPort = 1.0 # Reemplazar valor
#         _type = "example-value" # Reemplazar valor
#     }
# ]

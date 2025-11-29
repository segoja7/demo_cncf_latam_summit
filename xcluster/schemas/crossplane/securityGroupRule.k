# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1alpha1.ec2_aws_crossplane_io_v1alpha1_SecurityGroupRule as securitygrouprule_schema

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
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _publishConnectionDetailsTo?: securitygrouprule_schema.SecuritygrouprulespecPublishconnectiondetailsto
    _writeConnectionSecretToRef?: securitygrouprule_schema.SecuritygrouprulespecWriteconnectionsecrettoref
    _cidrBlock?: str
    _description?: str
    _fromPort: int
    _ipv6cidrBlock?: str
    _prefixListId?: str
    _protocol: str
    _region: str
    _securityGroupId?: str
    _securityGroupIdRef?: securitygrouprule_schema.SecuritygrouprulespecforproviderSecuritygroupidref
    _securityGroupIdSelector?: securitygrouprule_schema.SecuritygrouprulespecforproviderSecuritygroupidselector
    _sourceSecurityGroupId?: str
    _sourceSecurityGroupIdRef?: securitygrouprule_schema.SecuritygrouprulespecforproviderSourcesecuritygroupidref
    _sourceSecurityGroupIdSelector?: securitygrouprule_schema.SecuritygrouprulespecforproviderSourcesecuritygroupidselector
    _toPort: int
    _type: str

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
        publishConnectionDetailsTo = _publishConnectionDetailsTo
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            cidrBlock = _cidrBlock
            description = _description
            fromPort = _fromPort
            ipv6cidrBlock = _ipv6cidrBlock
            prefixListId = _prefixListId
            protocol = _protocol
            region = _region
            securityGroupId = _securityGroupId
            securityGroupIdRef = _securityGroupIdRef
            securityGroupIdSelector = _securityGroupIdSelector
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
#         _managementPolicies = [] # Reemplazar valor
#         _publishConnectionDetailsTo = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _writeConnectionSecretToRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _cidrBlock = "example-value" # Reemplazar valor
#         _description = "example-value" # Reemplazar valor
#         _fromPort = 1 # Reemplazar valor
#         _ipv6cidrBlock = "example-value" # Reemplazar valor
#         _prefixListId = "example-value" # Reemplazar valor
#         _protocol = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _securityGroupId = "example-value" # Reemplazar valor
#         _securityGroupIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _securityGroupIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _sourceSecurityGroupId = "example-value" # Reemplazar valor
#         _sourceSecurityGroupIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _sourceSecurityGroupIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _toPort = 1 # Reemplazar valor
#         _type = "example-value" # Reemplazar valor
#     }
# ]

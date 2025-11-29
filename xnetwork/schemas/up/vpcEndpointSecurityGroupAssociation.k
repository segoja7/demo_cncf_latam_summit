# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_VPCEndpointSecurityGroupAssociation as vpcendpointsecuritygroupassociation_schema

schema VpcendpointsecuritygroupassociationBlueprint(vpcendpointsecuritygroupassociation_schema.Vpcendpointsecuritygroupassociation):
    """Este Blueprint simplifica la creación de un recurso Vpcendpointsecuritygroupassociation,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: vpcendpointsecuritygroupassociation_schema.VpcendpointsecuritygroupassociationspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: vpcendpointsecuritygroupassociation_schema.VpcendpointsecuritygroupassociationspecWriteconnectionsecrettoref
    _region: str
    _replaceDefaultAssociation?: bool
    _securityGroupId?: str
    _securityGroupIdRef?: vpcendpointsecuritygroupassociation_schema.VpcendpointsecuritygroupassociationspecforproviderSecuritygroupidref
    _securityGroupIdSelector?: vpcendpointsecuritygroupassociation_schema.VpcendpointsecuritygroupassociationspecforproviderSecuritygroupidselector
    _vpcEndpointId?: str
    _vpcEndpointIdRef?: vpcendpointsecuritygroupassociation_schema.VpcendpointsecuritygroupassociationspecforproviderVpcendpointidref
    _vpcEndpointIdSelector?: vpcendpointsecuritygroupassociation_schema.VpcendpointsecuritygroupassociationspecforproviderVpcendpointidselector

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
            region = _region
            replaceDefaultAssociation = _replaceDefaultAssociation
            securityGroupId = _securityGroupId
            securityGroupIdRef = _securityGroupIdRef
            securityGroupIdSelector = _securityGroupIdSelector
            vpcEndpointId = _vpcEndpointId
            vpcEndpointIdRef = _vpcEndpointIdRef
            vpcEndpointIdSelector = _vpcEndpointIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     VpcendpointsecuritygroupassociationBlueprint {
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
#         _region = "example-value" # Reemplazar valor
#         _replaceDefaultAssociation = True # Reemplazar valor
#         _securityGroupId = "example-value" # Reemplazar valor
#         _securityGroupIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _securityGroupIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcEndpointId = "example-value" # Reemplazar valor
#         _vpcEndpointIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcEndpointIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_MainRouteTableAssociation as mainroutetableassociation_schema

schema MainroutetableassociationBlueprint(mainroutetableassociation_schema.Mainroutetableassociation):
    """Este Blueprint simplifica la creación de un recurso Mainroutetableassociation,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: mainroutetableassociation_schema.MainroutetableassociationspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: mainroutetableassociation_schema.MainroutetableassociationspecWriteconnectionsecrettoref
    _region: str
    _routeTableId?: str
    _routeTableIdRef?: mainroutetableassociation_schema.MainroutetableassociationspecforproviderRoutetableidref
    _routeTableIdSelector?: mainroutetableassociation_schema.MainroutetableassociationspecforproviderRoutetableidselector
    _vpcId?: str
    _vpcIdRef?: mainroutetableassociation_schema.MainroutetableassociationspecforproviderVpcidref
    _vpcIdSelector?: mainroutetableassociation_schema.MainroutetableassociationspecforproviderVpcidselector

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
            routeTableId = _routeTableId
            routeTableIdRef = _routeTableIdRef
            routeTableIdSelector = _routeTableIdSelector
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     MainroutetableassociationBlueprint {
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
#         _routeTableId = "example-value" # Reemplazar valor
#         _routeTableIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _routeTableIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcId = "example-value" # Reemplazar valor
#         _vpcIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

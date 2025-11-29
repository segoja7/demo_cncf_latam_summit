# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_RouteTableAssociation as routetableassociation_schema

schema RoutetableassociationBlueprint(routetableassociation_schema.Routetableassociation):
    """Este Blueprint simplifica la creación de un recurso Routetableassociation,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: routetableassociation_schema.RoutetableassociationspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: routetableassociation_schema.RoutetableassociationspecWriteconnectionsecrettoref
    _gatewayId?: str
    _gatewayIdRef?: routetableassociation_schema.RoutetableassociationspecforproviderGatewayidref
    _gatewayIdSelector?: routetableassociation_schema.RoutetableassociationspecforproviderGatewayidselector
    _region: str
    _routeTableId?: str
    _routeTableIdRef?: routetableassociation_schema.RoutetableassociationspecforproviderRoutetableidref
    _routeTableIdSelector?: routetableassociation_schema.RoutetableassociationspecforproviderRoutetableidselector
    _subnetId?: str
    _subnetIdRef?: routetableassociation_schema.RoutetableassociationspecforproviderSubnetidref
    _subnetIdSelector?: routetableassociation_schema.RoutetableassociationspecforproviderSubnetidselector

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
            gatewayId = _gatewayId
            gatewayIdRef = _gatewayIdRef
            gatewayIdSelector = _gatewayIdSelector
            region = _region
            routeTableId = _routeTableId
            routeTableIdRef = _routeTableIdRef
            routeTableIdSelector = _routeTableIdSelector
            subnetId = _subnetId
            subnetIdRef = _subnetIdRef
            subnetIdSelector = _subnetIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     RoutetableassociationBlueprint {
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
#         _gatewayId = "example-value" # Reemplazar valor
#         _gatewayIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _gatewayIdSelector = {
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
#         _subnetId = "example-value" # Reemplazar valor
#         _subnetIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _subnetIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_Route as route_schema

schema RouteBlueprint(route_schema.Route):
    """Este Blueprint simplifica la creación de un recurso Route,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: route_schema.RoutespecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: route_schema.RoutespecWriteconnectionsecrettoref
    _carrierGatewayId?: str
    _coreNetworkArn?: str
    _destinationCidrBlock?: str
    _destinationIpv6CidrBlock?: str
    _destinationPrefixListId?: str
    _destinationPrefixListIdRef?: route_schema.RoutespecforproviderDestinationprefixlistidref
    _destinationPrefixListIdSelector?: route_schema.RoutespecforproviderDestinationprefixlistidselector
    _egressOnlyGatewayId?: str
    _egressOnlyGatewayIdRef?: route_schema.RoutespecforproviderEgressonlygatewayidref
    _egressOnlyGatewayIdSelector?: route_schema.RoutespecforproviderEgressonlygatewayidselector
    _gatewayId?: str
    _gatewayIdRef?: route_schema.RoutespecforproviderGatewayidref
    _gatewayIdSelector?: route_schema.RoutespecforproviderGatewayidselector
    _instanceId?: str
    _instanceIdRef?: route_schema.RoutespecforproviderInstanceidref
    _instanceIdSelector?: route_schema.RoutespecforproviderInstanceidselector
    _localGatewayId?: str
    _natGatewayId?: str
    _natGatewayIdRef?: route_schema.RoutespecforproviderNatgatewayidref
    _natGatewayIdSelector?: route_schema.RoutespecforproviderNatgatewayidselector
    _networkInterfaceId?: str
    _networkInterfaceIdRef?: route_schema.RoutespecforproviderNetworkinterfaceidref
    _networkInterfaceIdSelector?: route_schema.RoutespecforproviderNetworkinterfaceidselector
    _region: str
    _routeTableId?: str
    _routeTableIdRef?: route_schema.RoutespecforproviderRoutetableidref
    _routeTableIdSelector?: route_schema.RoutespecforproviderRoutetableidselector
    _transitGatewayId?: str
    _transitGatewayIdRef?: route_schema.RoutespecforproviderTransitgatewayidref
    _transitGatewayIdSelector?: route_schema.RoutespecforproviderTransitgatewayidselector
    _vpcEndpointId?: str
    _vpcEndpointIdRef?: route_schema.RoutespecforproviderVpcendpointidref
    _vpcEndpointIdSelector?: route_schema.RoutespecforproviderVpcendpointidselector
    _vpcPeeringConnectionId?: str
    _vpcPeeringConnectionIdRef?: route_schema.RoutespecforproviderVpcpeeringconnectionidref
    _vpcPeeringConnectionIdSelector?: route_schema.RoutespecforproviderVpcpeeringconnectionidselector

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
            carrierGatewayId = _carrierGatewayId
            coreNetworkArn = _coreNetworkArn
            destinationCidrBlock = _destinationCidrBlock
            destinationIpv6CidrBlock = _destinationIpv6CidrBlock
            destinationPrefixListId = _destinationPrefixListId
            destinationPrefixListIdRef = _destinationPrefixListIdRef
            destinationPrefixListIdSelector = _destinationPrefixListIdSelector
            egressOnlyGatewayId = _egressOnlyGatewayId
            egressOnlyGatewayIdRef = _egressOnlyGatewayIdRef
            egressOnlyGatewayIdSelector = _egressOnlyGatewayIdSelector
            gatewayId = _gatewayId
            gatewayIdRef = _gatewayIdRef
            gatewayIdSelector = _gatewayIdSelector
            instanceId = _instanceId
            instanceIdRef = _instanceIdRef
            instanceIdSelector = _instanceIdSelector
            localGatewayId = _localGatewayId
            natGatewayId = _natGatewayId
            natGatewayIdRef = _natGatewayIdRef
            natGatewayIdSelector = _natGatewayIdSelector
            networkInterfaceId = _networkInterfaceId
            networkInterfaceIdRef = _networkInterfaceIdRef
            networkInterfaceIdSelector = _networkInterfaceIdSelector
            region = _region
            routeTableId = _routeTableId
            routeTableIdRef = _routeTableIdRef
            routeTableIdSelector = _routeTableIdSelector
            transitGatewayId = _transitGatewayId
            transitGatewayIdRef = _transitGatewayIdRef
            transitGatewayIdSelector = _transitGatewayIdSelector
            vpcEndpointId = _vpcEndpointId
            vpcEndpointIdRef = _vpcEndpointIdRef
            vpcEndpointIdSelector = _vpcEndpointIdSelector
            vpcPeeringConnectionId = _vpcPeeringConnectionId
            vpcPeeringConnectionIdRef = _vpcPeeringConnectionIdRef
            vpcPeeringConnectionIdSelector = _vpcPeeringConnectionIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     RouteBlueprint {
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
#         _carrierGatewayId = "example-value" # Reemplazar valor
#         _coreNetworkArn = "example-value" # Reemplazar valor
#         _destinationCidrBlock = "example-value" # Reemplazar valor
#         _destinationIpv6CidrBlock = "example-value" # Reemplazar valor
#         _destinationPrefixListId = "example-value" # Reemplazar valor
#         _destinationPrefixListIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _destinationPrefixListIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _egressOnlyGatewayId = "example-value" # Reemplazar valor
#         _egressOnlyGatewayIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _egressOnlyGatewayIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _gatewayId = "example-value" # Reemplazar valor
#         _gatewayIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _gatewayIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _instanceId = "example-value" # Reemplazar valor
#         _instanceIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _instanceIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _localGatewayId = "example-value" # Reemplazar valor
#         _natGatewayId = "example-value" # Reemplazar valor
#         _natGatewayIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _natGatewayIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _networkInterfaceId = "example-value" # Reemplazar valor
#         _networkInterfaceIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _networkInterfaceIdSelector = {
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
#         _transitGatewayId = "example-value" # Reemplazar valor
#         _transitGatewayIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _transitGatewayIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcEndpointId = "example-value" # Reemplazar valor
#         _vpcEndpointIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcEndpointIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcPeeringConnectionId = "example-value" # Reemplazar valor
#         _vpcPeeringConnectionIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcPeeringConnectionIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

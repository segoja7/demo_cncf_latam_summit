# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_FlowLog as flowlog_schema

schema FlowlogBlueprint(flowlog_schema.Flowlog):
    """Este Blueprint simplifica la creación de un recurso Flowlog,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: flowlog_schema.FlowlogspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: flowlog_schema.FlowlogspecWriteconnectionsecrettoref
    _deliverCrossAccountRole?: str
    _deliverCrossAccountRoleRef?: flowlog_schema.FlowlogspecforproviderDelivercrossaccountroleref
    _deliverCrossAccountRoleSelector?: flowlog_schema.FlowlogspecforproviderDelivercrossaccountroleselector
    _destinationOptions?: [flowlog_schema.FlowlogspecforproviderDestinationoptionsitem]
    _eniId?: str
    _iamRoleArn?: str
    _iamRoleArnRef?: flowlog_schema.FlowlogspecforproviderIamrolearnref
    _iamRoleArnSelector?: flowlog_schema.FlowlogspecforproviderIamrolearnselector
    _logDestination?: str
    _logDestinationRef?: flowlog_schema.FlowlogspecforproviderLogdestinationref
    _logDestinationSelector?: flowlog_schema.FlowlogspecforproviderLogdestinationselector
    _logDestinationType?: str
    _logFormat?: str
    _maxAggregationInterval?: float
    _region: str
    _subnetId?: str
    _subnetIdRef?: flowlog_schema.FlowlogspecforproviderSubnetidref
    _subnetIdSelector?: flowlog_schema.FlowlogspecforproviderSubnetidselector
    _tags?: {str:str}
    _trafficType?: str
    _transitGatewayAttachmentId?: str
    _transitGatewayId?: str
    _vpcId?: str
    _vpcIdRef?: flowlog_schema.FlowlogspecforproviderVpcidref
    _vpcIdSelector?: flowlog_schema.FlowlogspecforproviderVpcidselector

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
            deliverCrossAccountRole = _deliverCrossAccountRole
            deliverCrossAccountRoleRef = _deliverCrossAccountRoleRef
            deliverCrossAccountRoleSelector = _deliverCrossAccountRoleSelector
            destinationOptions = _destinationOptions
            eniId = _eniId
            iamRoleArn = _iamRoleArn
            iamRoleArnRef = _iamRoleArnRef
            iamRoleArnSelector = _iamRoleArnSelector
            logDestination = _logDestination
            logDestinationRef = _logDestinationRef
            logDestinationSelector = _logDestinationSelector
            logDestinationType = _logDestinationType
            logFormat = _logFormat
            maxAggregationInterval = _maxAggregationInterval
            region = _region
            subnetId = _subnetId
            subnetIdRef = _subnetIdRef
            subnetIdSelector = _subnetIdSelector
            tags = _tags
            trafficType = _trafficType
            transitGatewayAttachmentId = _transitGatewayAttachmentId
            transitGatewayId = _transitGatewayId
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     FlowlogBlueprint {
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
#         _deliverCrossAccountRole = "example-value" # Reemplazar valor
#         _deliverCrossAccountRoleRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _deliverCrossAccountRoleSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _destinationOptions = [] # Reemplazar valor
#         _eniId = "example-value" # Reemplazar valor
#         _iamRoleArn = "example-value" # Reemplazar valor
#         _iamRoleArnRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _iamRoleArnSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _logDestination = "example-value" # Reemplazar valor
#         _logDestinationRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _logDestinationSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _logDestinationType = "example-value" # Reemplazar valor
#         _logFormat = "example-value" # Reemplazar valor
#         _maxAggregationInterval = 1.0 # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _subnetId = "example-value" # Reemplazar valor
#         _subnetIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _subnetIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _trafficType = "example-value" # Reemplazar valor
#         _transitGatewayAttachmentId = "example-value" # Reemplazar valor
#         _transitGatewayId = "example-value" # Reemplazar valor
#         _vpcId = "example-value" # Reemplazar valor
#         _vpcIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

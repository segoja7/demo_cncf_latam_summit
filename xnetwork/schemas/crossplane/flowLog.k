# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1alpha1.ec2_aws_crossplane_io_v1alpha1_FlowLog as flowlog_schema

schema FlowlogBlueprint(flowlog_schema.Flowlog):
    """Este Blueprint simplifica la creación de un recurso Flowlog,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _clientToken?: str
    _cloudWatchLogDestination?: str
    _cloudWatchLogDestinationRef?: flowlog_schema.FlowlogspecforproviderCloudwatchlogdestinationref
    _cloudWatchLogDestinationSelector?: flowlog_schema.FlowlogspecforproviderCloudwatchlogdestinationselector
    _deliverCrossAccountRole?: str
    _deliverLogsPermissionArn?: str
    _deliverLogsPermissionArnRef?: flowlog_schema.FlowlogspecforproviderDeliverlogspermissionarnref
    _deliverLogsPermissionArnSelector?: flowlog_schema.FlowlogspecforproviderDeliverlogspermissionarnselector
    _destinationOptions?: flowlog_schema.FlowlogspecforproviderDestinationoptions
    _logDestination?: str
    _logDestinationType?: str
    _logGroupName?: str
    _maxAggregationInterval?: int
    _region: str
    _resourceIDs?: [str]
    _s3BucketLogDestination?: str
    _s3BucketLogDestinationRef?: flowlog_schema.FlowlogspecforproviderS3Bucketlogdestinationref
    _s3BucketLogDestinationSelector?: flowlog_schema.FlowlogspecforproviderS3Bucketlogdestinationselector
    _s3BucketSubfolder?: str
    _subnetId?: str
    _subnetIdRef?: flowlog_schema.FlowlogspecforproviderSubnetidref
    _subnetIdSelector?: flowlog_schema.FlowlogspecforproviderSubnetidselector
    _tags?: {str:str}
    _trafficType?: str
    _transitGatewayAttachmentId?: str
    _transitGatewayAttachmentIdRef?: flowlog_schema.FlowlogspecforproviderTransitgatewayattachmentidref
    _transitGatewayAttachmentIdSelector?: flowlog_schema.FlowlogspecforproviderTransitgatewayattachmentidselector
    _transitGatewayId?: str
    _transitGatewayIdRef?: flowlog_schema.FlowlogspecforproviderTransitgatewayidref
    _transitGatewayIdSelector?: flowlog_schema.FlowlogspecforproviderTransitgatewayidselector
    _vpcId?: str
    _vpcIdRef?: flowlog_schema.FlowlogspecforproviderVpcidref
    _vpcIdSelector?: flowlog_schema.FlowlogspecforproviderVpcidselector
    _logFormat?: str
    _networkInterfaceId?: str
    _resourceType?: str

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            clientToken = _clientToken
            cloudWatchLogDestination = _cloudWatchLogDestination
            cloudWatchLogDestinationRef = _cloudWatchLogDestinationRef
            cloudWatchLogDestinationSelector = _cloudWatchLogDestinationSelector
            deliverCrossAccountRole = _deliverCrossAccountRole
            deliverLogsPermissionArn = _deliverLogsPermissionArn
            deliverLogsPermissionArnRef = _deliverLogsPermissionArnRef
            deliverLogsPermissionArnSelector = _deliverLogsPermissionArnSelector
            destinationOptions = _destinationOptions
            logDestination = _logDestination
            logDestinationType = _logDestinationType
            logGroupName = _logGroupName
            maxAggregationInterval = _maxAggregationInterval
            region = _region
            resourceIDs = _resourceIDs
            s3BucketLogDestination = _s3BucketLogDestination
            s3BucketLogDestinationRef = _s3BucketLogDestinationRef
            s3BucketLogDestinationSelector = _s3BucketLogDestinationSelector
            s3BucketSubfolder = _s3BucketSubfolder
            subnetId = _subnetId
            subnetIdRef = _subnetIdRef
            subnetIdSelector = _subnetIdSelector
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
            trafficType = _trafficType
            transitGatewayAttachmentId = _transitGatewayAttachmentId
            transitGatewayAttachmentIdRef = _transitGatewayAttachmentIdRef
            transitGatewayAttachmentIdSelector = _transitGatewayAttachmentIdSelector
            transitGatewayId = _transitGatewayId
            transitGatewayIdRef = _transitGatewayIdRef
            transitGatewayIdSelector = _transitGatewayIdSelector
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
            logFormat = _logFormat
            networkInterfaceId = _networkInterfaceId
            resourceType = _resourceType
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
#         _providerConfig = "example-value" # Reemplazar valor
#         _clientToken = "example-value" # Reemplazar valor
#         _cloudWatchLogDestination = "example-value" # Reemplazar valor
#         _cloudWatchLogDestinationRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _cloudWatchLogDestinationSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _deliverCrossAccountRole = "example-value" # Reemplazar valor
#         _deliverLogsPermissionArn = "example-value" # Reemplazar valor
#         _deliverLogsPermissionArnRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _deliverLogsPermissionArnSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _destinationOptions = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _logDestination = "example-value" # Reemplazar valor
#         _logDestinationType = "example-value" # Reemplazar valor
#         _logGroupName = "example-value" # Reemplazar valor
#         _maxAggregationInterval = 1 # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _resourceIDs = [] # Reemplazar valor
#         _s3BucketLogDestination = "example-value" # Reemplazar valor
#         _s3BucketLogDestinationRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _s3BucketLogDestinationSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _s3BucketSubfolder = "example-value" # Reemplazar valor
#         _subnetId = "example-value" # Reemplazar valor
#         _subnetIdRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _subnetIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _tags = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _trafficType = "example-value" # Reemplazar valor
#         _transitGatewayAttachmentId = "example-value" # Reemplazar valor
#         _transitGatewayAttachmentIdRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _transitGatewayAttachmentIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _transitGatewayId = "example-value" # Reemplazar valor
#         _transitGatewayIdRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _transitGatewayIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _vpcId = "example-value" # Reemplazar valor
#         _vpcIdRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _vpcIdSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _logFormat = "example-value" # Reemplazar valor
#         _networkInterfaceId = "example-value" # Reemplazar valor
#         _resourceType = "example-value" # Reemplazar valor
#     }
# ]

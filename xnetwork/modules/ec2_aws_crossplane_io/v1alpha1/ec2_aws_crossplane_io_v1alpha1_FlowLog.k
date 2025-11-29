"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Flowlog:
    """
    FlowLog is the Schema for the FlowLogs API

    Attributes
    ----------
    apiVersion : str, optional
        APIVersion defines the versioned schema of this representation of an object.
        Servers should convert recognized schemas to the latest internal value, and
        may reject unrecognized values.
        More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, optional
        Kind is a string value representing the REST resource this object represents.
        Servers may infer this from the endpoint the client submits requests to.
        Cannot be updated.
        In CamelCase.
        More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : any, optional
        No description available.
    spec : FlowlogSpec, required
        FlowLogSpec defines the desired state of FlowLog
    status : FlowlogStatus, optional
        FlowLogStatus defines the observed state of FlowLog.
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1alpha1"
    kind : str = "FlowLog"
    metadata? : any
    spec : FlowlogSpec
    status? : FlowlogStatus

schema FlowlogSpec:
    """
    FlowLogSpec defines the desired state of FlowLog

    Attributes
    ----------
    deletionPolicy : "Orphan" | "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external
        when this managed resource is deleted - either "Delete" or "Orphan" the
        external resource.
        This field is planned to be deprecated in favor of the ManagementPolicies
        field in a future release. Currently, both could be set independently and
        non-default values would be honored if the feature flag is enabled.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : FlowlogspecForprovider, required
        FlowLogParameters defines the desired state of FlowLog
    managementPolicies : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"], optional
        THIS IS A BETA FIELD. It is on by default but can be opted out
        through a Crossplane feature flag.
        ManagementPolicies specify the array of actions Crossplane is allowed to
        take on the managed and external resources.
        This field is planned to replace the DeletionPolicy field in a future
        release. Currently, both could be set independently and non-default
        values would be honored if the feature flag is enabled. If both are
        custom, the DeletionPolicy field will be ignored.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
        and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : FlowlogspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : FlowlogspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : FlowlogspecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
        This field is planned to be replaced in a future release in favor of
        PublishConnectionDetailsTo. Currently, both could be set independently
        and connection details would be published to both without affecting
        each other.
    """
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : FlowlogspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : FlowlogspecProviderconfigref
    publishConnectionDetailsTo? : FlowlogspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : FlowlogspecWriteconnectionsecrettoref

schema FlowlogspecForprovider:
    """
    FlowLogParameters defines the desired state of FlowLog

    Attributes
    ----------
    clientToken : str, optional
        Unique, case-sensitive identifier that you provide to ensure the idempotency
        of the request. For more information, see How to ensure idempotency (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
    cloudWatchLogDestination : str, optional
        The Amazon Resource Names (ARNs) of a CloudWatch Log Group.
    cloudWatchLogDestinationRef : FlowlogspecforproviderCloudwatchlogdestinationref, optional
        CloudWatchLogDestinationRef is a reference to a CloudWatch Log Group used to set
        the CloudWatchLogDestination.
    cloudWatchLogDestinationSelector : FlowlogspecforproviderCloudwatchlogdestinationselector, optional
        CloudWatchLogDestinationSelector selects a reference to a CloudWatch Log Group used
        to set the CloudWatchLogDestination.
    deliverCrossAccountRole : str, optional
        The ARN of the IAM role that allows Amazon EC2 to publish flow logs across
        accounts.
    deliverLogsPermissionArn : str, optional
        The ARN for the IAM role that permits Amazon EC2
        to publish flow logs to a CloudWatch Logs log group in your
        account. \n If you specify LogDestinationType as s3, do not
        specify DeliverLogsPermissionArn or LogGroupName.
    deliverLogsPermissionArnRef : FlowlogspecforproviderDeliverlogspermissionarnref, optional
        DeliverLogsPermissionARNRef is a reference to DeliverLogsPermissionARN used to set
        the DeliverLogsPermissionARN.
    deliverLogsPermissionArnSelector : FlowlogspecforproviderDeliverlogspermissionarnselector, optional
        DeliverLogsPermissionARNelector selects a reference to DeliverLogsPermissionARN used
        to set the DeliverLogsPermissionARN.
    destinationOptions : FlowlogspecforproviderDestinationoptions, optional
        The destination options.
    logDestination : str, optional
        The destination for the flow log data. The meaning of this parameter depends
        on the destination type.

           * If the destination type is cloud-watch-logs, specify the ARN of a CloudWatch
           Logs log group. For example: arn:aws:logs:region:account_id:log-group:my_group
           Alternatively, use the LogGroupName parameter.

           * If the destination type is s3, specify the ARN of an S3 bucket. For
           example: arn:aws:s3:::my_bucket/my_subfolder/ The subfolder is optional.
           Note that you can't use AWSLogs as a subfolder name.

           * If the destination type is kinesis-data-firehose, specify the ARN of
           a Kinesis Data Firehose delivery stream. For example: arn:aws:firehose:region:account_id:deliverystream:my_stream
    logDestinationType : str, optional
        The type of destination for the flow log data.

        Default: cloud-watch-logs
    logFormat : str, optional
        The fields to include in the flow log record. List the fields in the order
        in which they should appear. If you omit this parameter, the flow log is
        created using the default format. If you specify this parameter, you must
        include at least one field. For more information about the available fields,
        see Flow log records (https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records)
        in the Amazon VPC User Guide or Transit Gateway Flow Log records (https://docs.aws.amazon.com/vpc/latest/tgw/tgw-flow-logs.html#flow-log-records)
        in the Amazon Web Services Transit Gateway Guide.

        Specify the fields using the ${field-id} format, separated by spaces.
    logGroupName : str, optional
        The name of a new or existing CloudWatch Logs log group where Amazon EC2
        publishes your flow logs.

        This parameter is valid only if the destination type is cloud-watch-logs.
    maxAggregationInterval : int, optional
        The maximum interval of time during which a flow of packets is captured and
        aggregated into a flow log record. The possible values are 60 seconds (1
        minute) or 600 seconds (10 minutes). This parameter must be 60 seconds for
        transit gateway resource types.

        When a network interface is attached to a Nitro-based instance (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances),
        the aggregation interval is always 60 seconds or less, regardless of the
        value that you specify.

        Default: 600
    networkInterfaceId : str, optional
        The ID of the NetworkInterface for which you want to create a flow log.
    region : str, required
        Region is which region the FlowLog will be created.
    resourceIDs : [str], optional
        The ID of the subnet, network interface, or VPC for which you want to create
        a flow log.

        Constraints: Maximum of 1000 resources
    resourceType : str, optional
        The type of resource for which to create the flow log. For example, if you
        specified a VPC ID for the ResourceId property, specify VPC for this property.
    s3BucketLogDestination : str, optional
        The Amazon Resource Names (ARNs) of a CloudWatch Log Group.
    s3BucketLogDestinationRef : FlowlogspecforproviderS3Bucketlogdestinationref, optional
        S3BucketLogDestinationRef is a reference to a S3 Bucket  to set
        the S3BucketLogDestination.
    s3BucketLogDestinationSelector : FlowlogspecforproviderS3Bucketlogdestinationselector, optional
        S3BucketLogDestinationSelector selects a reference to a S3 Bucket used
        to set the S3BucketLogDestination.
    s3BucketSubfolder : str, optional
        S3BucketSubfolder allows you to use a subfolder in a S3Bucket, if S3BucketLogDestination is used to determin the ARN of a Bucket managed by crossplane
        S3BucketSubfolder starts and ends without an slash e.g. test/test2
        You cannot use AWSLogs as a subfolder name. This is a reserved term.
    subnetId : str, optional
        The ID of the one or more Subnets for which you want to create a flow log.
    subnetIdRef : FlowlogspecforproviderSubnetidref, optional
        SubnetIDRefs is a referenc to a SubnetID used to set
        the SubnetID.
    subnetIdSelector : FlowlogspecforproviderSubnetidselector, optional
        SubnetIDSelector selects reference to a SubnetID used
        to set the SubnetID.
    tags : [FlowlogspecforproviderTagsitem], optional
        Metadata tagging key value pairs
    trafficType : str, optional
        The type of traffic to monitor (accepted traffic, rejected traffic, or all
        traffic). This parameter is not supported for transit gateway resource types.
        It is required for the other resource types.
    transitGatewayAttachmentId : str, optional
        The ID of the TransitGatewayAttachment for which you want to create a flow log.
    transitGatewayAttachmentIdRef : FlowlogspecforproviderTransitgatewayattachmentidref, optional
        TransitGatewayAttachmentIDRef is a reference to an API used to set
        the TransitGatewayAttachmentID.
    transitGatewayAttachmentIdSelector : FlowlogspecforproviderTransitgatewayattachmentidselector, optional
        TransitGatewayAttachmentIDSelector selects references to API used
        to set the TransitGatewayAttachmentID.
    transitGatewayId : str, optional
        The ID of the TransitGateway for which you want to create a flow log.
    transitGatewayIdRef : FlowlogspecforproviderTransitgatewayidref, optional
        TransitGatewayIDRef is a reference to an API used to set
        the TransitGatewayID.
    transitGatewayIdSelector : FlowlogspecforproviderTransitgatewayidselector, optional
        TransitGatewayIDSelector selects references to API used
        to set the TransitGatewayID.
    vpcId : str, optional
        The ID of the VPC for which you want to create a flow log.
    vpcIdRef : FlowlogspecforproviderVpcidref, optional
        VPCIDRef is a reference to an API used to set
        the VPCID.
    vpcIdSelector : FlowlogspecforproviderVpcidselector, optional
        VPCIDSelector selects references to API used
        to set the VPCID.
    """
    clientToken? : str
    cloudWatchLogDestination? : str
    cloudWatchLogDestinationRef? : FlowlogspecforproviderCloudwatchlogdestinationref
    cloudWatchLogDestinationSelector? : FlowlogspecforproviderCloudwatchlogdestinationselector
    deliverCrossAccountRole? : str
    deliverLogsPermissionArn? : str
    deliverLogsPermissionArnRef? : FlowlogspecforproviderDeliverlogspermissionarnref
    deliverLogsPermissionArnSelector? : FlowlogspecforproviderDeliverlogspermissionarnselector
    destinationOptions? : FlowlogspecforproviderDestinationoptions
    logDestination? : str
    logDestinationType? : str
    logFormat? : str
    logGroupName? : str
    maxAggregationInterval? : int
    networkInterfaceId? : str
    region : str
    resourceIDs? : [str]
    resourceType? : str
    s3BucketLogDestination? : str
    s3BucketLogDestinationRef? : FlowlogspecforproviderS3Bucketlogdestinationref
    s3BucketLogDestinationSelector? : FlowlogspecforproviderS3Bucketlogdestinationselector
    s3BucketSubfolder? : str
    subnetId? : str
    subnetIdRef? : FlowlogspecforproviderSubnetidref
    subnetIdSelector? : FlowlogspecforproviderSubnetidselector
    tags? : [FlowlogspecforproviderTagsitem]
    trafficType? : str
    transitGatewayAttachmentId? : str
    transitGatewayAttachmentIdRef? : FlowlogspecforproviderTransitgatewayattachmentidref
    transitGatewayAttachmentIdSelector? : FlowlogspecforproviderTransitgatewayattachmentidselector
    transitGatewayId? : str
    transitGatewayIdRef? : FlowlogspecforproviderTransitgatewayidref
    transitGatewayIdSelector? : FlowlogspecforproviderTransitgatewayidselector
    vpcId? : str
    vpcIdRef? : FlowlogspecforproviderVpcidref
    vpcIdSelector? : FlowlogspecforproviderVpcidselector

schema FlowlogspecforproviderCloudwatchlogdestinationref:
    """
    CloudWatchLogDestinationRef is a reference to a CloudWatch Log Group used to set
    the CloudWatchLogDestination.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : FlowlogspecforprovidercloudwatchlogdestinationrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : FlowlogspecforprovidercloudwatchlogdestinationrefPolicy

schema FlowlogspecforprovidercloudwatchlogdestinationrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderCloudwatchlogdestinationselector:
    """
    CloudWatchLogDestinationSelector selects a reference to a CloudWatch Log Group used
    to set the CloudWatchLogDestination.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : FlowlogspecforprovidercloudwatchlogdestinationselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : FlowlogspecforprovidercloudwatchlogdestinationselectorPolicy

schema FlowlogspecforprovidercloudwatchlogdestinationselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderDeliverlogspermissionarnref:
    """
    DeliverLogsPermissionARNRef is a reference to DeliverLogsPermissionARN used to set
    the DeliverLogsPermissionARN.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : FlowlogspecforproviderdeliverlogspermissionarnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : FlowlogspecforproviderdeliverlogspermissionarnrefPolicy

schema FlowlogspecforproviderdeliverlogspermissionarnrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderDeliverlogspermissionarnselector:
    """
    DeliverLogsPermissionARNelector selects a reference to DeliverLogsPermissionARN used
    to set the DeliverLogsPermissionARN.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : FlowlogspecforproviderdeliverlogspermissionarnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : FlowlogspecforproviderdeliverlogspermissionarnselectorPolicy

schema FlowlogspecforproviderdeliverlogspermissionarnselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderDestinationoptions:
    """
    The destination options.

    Attributes
    ----------
    fileFormat : str, optional
        No description available.
    hiveCompatiblePartitions : bool, optional
        No description available.
    perHourPartition : bool, optional
        No description available.
    """
    fileFormat? : str
    hiveCompatiblePartitions? : bool
    perHourPartition? : bool

schema FlowlogspecforproviderS3Bucketlogdestinationref:
    """
    S3BucketLogDestinationRef is a reference to a S3 Bucket  to set
    the S3BucketLogDestination.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : Flowlogspecforproviders3BucketlogdestinationrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : Flowlogspecforproviders3BucketlogdestinationrefPolicy

schema Flowlogspecforproviders3BucketlogdestinationrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderS3Bucketlogdestinationselector:
    """
    S3BucketLogDestinationSelector selects a reference to a S3 Bucket used
    to set the S3BucketLogDestination.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : Flowlogspecforproviders3BucketlogdestinationselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : Flowlogspecforproviders3BucketlogdestinationselectorPolicy

schema Flowlogspecforproviders3BucketlogdestinationselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderSubnetidref:
    """
    SubnetIDRefs is a referenc to a SubnetID used to set
    the SubnetID.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : FlowlogspecforprovidersubnetidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : FlowlogspecforprovidersubnetidrefPolicy

schema FlowlogspecforprovidersubnetidrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderSubnetidselector:
    """
    SubnetIDSelector selects reference to a SubnetID used
    to set the SubnetID.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : FlowlogspecforprovidersubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : FlowlogspecforprovidersubnetidselectorPolicy

schema FlowlogspecforprovidersubnetidselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderTagsitem:
    """
    FlowlogspecforproviderTagsitem schema.

    Attributes
    ----------
    key : str, optional
        No description available.
    value : str, optional
        No description available.
    """
    key? : str
    value? : str

schema FlowlogspecforproviderTransitgatewayattachmentidref:
    """
    TransitGatewayAttachmentIDRef is a reference to an API used to set
    the TransitGatewayAttachmentID.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : FlowlogspecforprovidertransitgatewayattachmentidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : FlowlogspecforprovidertransitgatewayattachmentidrefPolicy

schema FlowlogspecforprovidertransitgatewayattachmentidrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderTransitgatewayattachmentidselector:
    """
    TransitGatewayAttachmentIDSelector selects references to API used
    to set the TransitGatewayAttachmentID.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : FlowlogspecforprovidertransitgatewayattachmentidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : FlowlogspecforprovidertransitgatewayattachmentidselectorPolicy

schema FlowlogspecforprovidertransitgatewayattachmentidselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderTransitgatewayidref:
    """
    TransitGatewayIDRef is a reference to an API used to set
    the TransitGatewayID.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : FlowlogspecforprovidertransitgatewayidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : FlowlogspecforprovidertransitgatewayidrefPolicy

schema FlowlogspecforprovidertransitgatewayidrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderTransitgatewayidselector:
    """
    TransitGatewayIDSelector selects references to API used
    to set the TransitGatewayID.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : FlowlogspecforprovidertransitgatewayidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : FlowlogspecforprovidertransitgatewayidselectorPolicy

schema FlowlogspecforprovidertransitgatewayidselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderVpcidref:
    """
    VPCIDRef is a reference to an API used to set
    the VPCID.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : FlowlogspecforprovidervpcidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : FlowlogspecforprovidervpcidrefPolicy

schema FlowlogspecforprovidervpcidrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecforproviderVpcidselector:
    """
    VPCIDSelector selects references to API used
    to set the VPCID.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : FlowlogspecforprovidervpcidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : FlowlogspecforprovidervpcidselectorPolicy

schema FlowlogspecforprovidervpcidselectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : FlowlogspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : FlowlogspecproviderconfigrefPolicy

schema FlowlogspecproviderconfigrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : FlowlogspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : FlowlogspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : FlowlogspecpublishconnectiondetailstoConfigref
    metadata? : FlowlogspecpublishconnectiondetailstoMetadata
    name : str

schema FlowlogspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : FlowlogspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : FlowlogspecpublishconnectiondetailstoconfigrefPolicy

schema FlowlogspecpublishconnectiondetailstoconfigrefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : "Required" | "Optional", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : "Always" | "IfNotPresent", optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution? : "Required" | "Optional"
    resolve? : "Always" | "IfNotPresent"

schema FlowlogspecpublishconnectiondetailstoMetadata:
    """
    Metadata is the metadata for connection secret.

    Attributes
    ----------
    annotations : {str:str}, optional
        Annotations are the annotations to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.annotations".
        - It is up to Secret Store implementation for others store types.
    labels : {str:str}, optional
        Labels are the labels/tags to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.labels".
        - It is up to Secret Store implementation for others store types.
    type : str, optional
        Type is the SecretType for the connection secret.
        - Only valid for Kubernetes Secret Stores.
    """
    annotations? : {str:str}
    labels? : {str:str}
    type? : str

schema FlowlogspecWriteconnectionsecrettoref:
    """
    WriteConnectionSecretToReference specifies the namespace and name of a
    Secret to which any connection details for this managed resource should
    be written. Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.
    This field is planned to be replaced in a future release in favor of
    PublishConnectionDetailsTo. Currently, both could be set independently
    and connection details would be published to both without affecting
    each other.

    Attributes
    ----------
    name : str, required
        Name of the secret.
    namespace : str, required
        Namespace of the secret.
    """
    name : str
    namespace : str

schema FlowlogStatus:
    """
    FlowLogStatus defines the observed state of FlowLog.

    Attributes
    ----------
    atProvider : FlowlogstatusAtprovider, optional
        FlowLogObservation defines the observed state of FlowLog
    conditions : [FlowlogstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : FlowlogstatusAtprovider
    conditions? : [FlowlogstatusConditionsitem]
    observedGeneration? : int

schema FlowlogstatusAtprovider:
    """
    FlowLogObservation defines the observed state of FlowLog

    Attributes
    ----------
    creationTime : str, optional
        The date and time the flow log was created.
    deliverLogsStatus : str, optional
        The status of the logs delivery (SUCCESS | FAILED).
    flowLogID : str, optional
        The ID of the flow log.
    flowLogStatus : str, optional
        The status of the flow log (ACTIVE).
    resourceID : str, optional
        The ID of the resource being monitored.
    tags : [FlowlogstatusatproviderTagsitem], optional
        The tags for the flow log.
    """
    creationTime? : str
    deliverLogsStatus? : str
    flowLogID? : str
    flowLogStatus? : str
    resourceID? : str
    tags? : [FlowlogstatusatproviderTagsitem]

schema FlowlogstatusatproviderTagsitem:
    """
    FlowlogstatusatproviderTagsitem schema.

    Attributes
    ----------
    key : str, optional
        No description available.
    value : str, optional
        No description available.
    """
    key? : str
    value? : str

schema FlowlogstatusConditionsitem:
    """
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, required
        LastTransitionTime is the last time this condition transitioned from one
        status to another.
    message : str, optional
        A Message containing details about this condition's last transition from
        one status to another, if any.
    observedGeneration : int, optional
        ObservedGeneration represents the .metadata.generation that the condition was set based upon.
        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
        with respect to the current state of the instance.
    reason : str, required
        A Reason for this condition's last transition from one status to another.
    status : str, required
        Status of this condition; is it currently True, False, or Unknown?
    type : str, required
        Type of this condition. At most one of each condition type may apply to
        a resource at any point in time.
    """
    lastTransitionTime : str
    message? : str
    observedGeneration? : int
    reason : str
    status : str
    type : str
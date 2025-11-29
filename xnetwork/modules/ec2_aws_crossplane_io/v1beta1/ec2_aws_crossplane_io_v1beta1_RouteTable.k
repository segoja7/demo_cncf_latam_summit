"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Routetable:
    """
    A RouteTable is a managed resource that represents an AWS VPC Route Table.

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
    spec : RoutetableSpec, required
        A RouteTableSpec defines the desired state of a RouteTable.
    status : RoutetableStatus, optional
        A RouteTableStatus represents the observed state of a RouteTable.
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1beta1"
    kind : str = "RouteTable"
    metadata? : any
    spec : RoutetableSpec
    status? : RoutetableStatus

schema RoutetableSpec:
    """
    A RouteTableSpec defines the desired state of a RouteTable.

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
    forProvider : RoutetablespecForprovider, required
        RouteTableParameters define the desired state of an AWS VPC Route Table.
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
    providerConfigRef : RoutetablespecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : RoutetablespecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : RoutetablespecWriteconnectionsecrettoref, optional
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
    forProvider : RoutetablespecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : RoutetablespecProviderconfigref
    publishConnectionDetailsTo? : RoutetablespecPublishconnectiondetailsto
    writeConnectionSecretToRef? : RoutetablespecWriteconnectionsecrettoref

schema RoutetablespecForprovider:
    """
    RouteTableParameters define the desired state of an AWS VPC Route Table.

    Attributes
    ----------
    associations : [RoutetablespecforproviderAssociationsitem], required
        The associations between the route table and one or more subnets.
    ignoreRoutes : bool, optional
        Indicates whether we reconcile inline routes
    region : str, required
        Region is the region you'd like your VPC to be created in.
    routes : [RoutetablespecforproviderRoutesitem], optional
        inline routes in the route table
        Deprecated: Routes inline exists for historical compatibility
        and should not be used. Please use separate route resource.
    tags : [RoutetablespecforproviderTagsitem], optional
        Tags represents to current ec2 tags.
    vpcId : str, optional
        VPCID is the ID of the VPC.
    vpcIdRef : RoutetablespecforproviderVpcidref, optional
        VPCIDRef references a VPC to retrieve its vpcId
    vpcIdSelector : RoutetablespecforproviderVpcidselector, optional
        VPCIDSelector selects a reference to a VPC to retrieve its vpcId
    """
    associations : [RoutetablespecforproviderAssociationsitem]
    ignoreRoutes? : bool
    region : str
    routes? : [RoutetablespecforproviderRoutesitem]
    tags? : [RoutetablespecforproviderTagsitem]
    vpcId? : str
    vpcIdRef? : RoutetablespecforproviderVpcidref
    vpcIdSelector? : RoutetablespecforproviderVpcidselector

schema RoutetablespecforproviderAssociationsitem:
    """
    Association describes an association between a route table and a subnet.

    Attributes
    ----------
    subnetId : str, optional
        The ID of the subnet. A subnet ID is not returned for an implicit
        association.
    subnetIdRef : RoutetablespecforproviderassociationsitemSubnetidref, optional
        A referencer to retrieve the ID of a subnet
    subnetIdSelector : RoutetablespecforproviderassociationsitemSubnetidselector, optional
        A selector to select a referencer to retrieve the ID of a subnet
    """
    subnetId? : str
    subnetIdRef? : RoutetablespecforproviderassociationsitemSubnetidref
    subnetIdSelector? : RoutetablespecforproviderassociationsitemSubnetidselector

schema RoutetablespecforproviderassociationsitemSubnetidref:
    """
    A referencer to retrieve the ID of a subnet

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RoutetablespecforproviderassociationsitemsubnetidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RoutetablespecforproviderassociationsitemsubnetidrefPolicy

schema RoutetablespecforproviderassociationsitemsubnetidrefPolicy:
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

schema RoutetablespecforproviderassociationsitemSubnetidselector:
    """
    A selector to select a referencer to retrieve the ID of a subnet

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : RoutetablespecforproviderassociationsitemsubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : RoutetablespecforproviderassociationsitemsubnetidselectorPolicy

schema RoutetablespecforproviderassociationsitemsubnetidselectorPolicy:
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

schema RoutetablespecforproviderRoutesitem:
    """
    RouteBeta describes a route in a route table.
    provider-aws currently provides both a standalone Route resource
    and a RouteTable resource with routes defined in-line.
    At this time you cannot use a Route Table with in-line routes
    in conjunction with any Route resources.
    Doing so will cause a conflict of rule settings and will overwrite rules.

    Attributes
    ----------
    destinationCidrBlock : str, optional
        The IPv4 CIDR address block used for the destination match. Routing
        decisions are based on the most specific match.
    destinationIpv6CidrBlock : str, optional
        The IPv6 CIDR address block used for the destination match. Routing
        decisions are based on the most specific match.
    egressOnlyInternetGatewayId : str, optional
        [IPv6 traffic only] The ID of an egress-only internet gateway.
    gatewayId : str, optional
        The ID of an internet gateway or virtual private gateway attached to your
        VPC.
    gatewayIdRef : RoutetablespecforproviderroutesitemGatewayidref, optional
        A referencer to retrieve the ID of a gateway
    gatewayIdSelector : RoutetablespecforproviderroutesitemGatewayidselector, optional
        A selector to select a referencer to retrieve the ID of a gateway
    instanceId : str, optional
        The ID of a NAT instance in your VPC. The operation fails if you specify
        an instance ID unless exactly one network interface is attached.
    localGatewayId : str, optional
        The ID of the local gateway.
    natGatewayId : str, optional
        [IPv4 traffic only] The ID of a NAT gateway.
    natGatewayIdRef : RoutetablespecforproviderroutesitemNatgatewayidref, optional
        A referencer to retrieve the ID of a NAT gateway
    natGatewayIdSelector : RoutetablespecforproviderroutesitemNatgatewayidselector, optional
        A selector to select a referencer to retrieve the ID of a NAT gateway
    networkInterfaceId : str, optional
        The ID of a network interface.
    transitGatewayId : str, optional
        The ID of a transit gateway.
    vpcPeeringConnectionId : str, optional
        The ID of a VPC peering connection.
    """
    destinationCidrBlock? : str
    destinationIpv6CidrBlock? : str
    egressOnlyInternetGatewayId? : str
    gatewayId? : str
    gatewayIdRef? : RoutetablespecforproviderroutesitemGatewayidref
    gatewayIdSelector? : RoutetablespecforproviderroutesitemGatewayidselector
    instanceId? : str
    localGatewayId? : str
    natGatewayId? : str
    natGatewayIdRef? : RoutetablespecforproviderroutesitemNatgatewayidref
    natGatewayIdSelector? : RoutetablespecforproviderroutesitemNatgatewayidselector
    networkInterfaceId? : str
    transitGatewayId? : str
    vpcPeeringConnectionId? : str

schema RoutetablespecforproviderroutesitemGatewayidref:
    """
    A referencer to retrieve the ID of a gateway

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RoutetablespecforproviderroutesitemgatewayidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RoutetablespecforproviderroutesitemgatewayidrefPolicy

schema RoutetablespecforproviderroutesitemgatewayidrefPolicy:
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

schema RoutetablespecforproviderroutesitemGatewayidselector:
    """
    A selector to select a referencer to retrieve the ID of a gateway

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : RoutetablespecforproviderroutesitemgatewayidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : RoutetablespecforproviderroutesitemgatewayidselectorPolicy

schema RoutetablespecforproviderroutesitemgatewayidselectorPolicy:
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

schema RoutetablespecforproviderroutesitemNatgatewayidref:
    """
    A referencer to retrieve the ID of a NAT gateway

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RoutetablespecforproviderroutesitemnatgatewayidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RoutetablespecforproviderroutesitemnatgatewayidrefPolicy

schema RoutetablespecforproviderroutesitemnatgatewayidrefPolicy:
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

schema RoutetablespecforproviderroutesitemNatgatewayidselector:
    """
    A selector to select a referencer to retrieve the ID of a NAT gateway

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : RoutetablespecforproviderroutesitemnatgatewayidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : RoutetablespecforproviderroutesitemnatgatewayidselectorPolicy

schema RoutetablespecforproviderroutesitemnatgatewayidselectorPolicy:
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

schema RoutetablespecforproviderTagsitem:
    """
    Tag defines a tag

    Attributes
    ----------
    key : str, required
        Key is the name of the tag.
    value : str, required
        Value is the value of the tag.
    """
    key : str
    value : str

schema RoutetablespecforproviderVpcidref:
    """
    VPCIDRef references a VPC to retrieve its vpcId

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RoutetablespecforprovidervpcidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RoutetablespecforprovidervpcidrefPolicy

schema RoutetablespecforprovidervpcidrefPolicy:
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

schema RoutetablespecforproviderVpcidselector:
    """
    VPCIDSelector selects a reference to a VPC to retrieve its vpcId

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : RoutetablespecforprovidervpcidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : RoutetablespecforprovidervpcidselectorPolicy

schema RoutetablespecforprovidervpcidselectorPolicy:
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

schema RoutetablespecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RoutetablespecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RoutetablespecproviderconfigrefPolicy

schema RoutetablespecproviderconfigrefPolicy:
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

schema RoutetablespecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : RoutetablespecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : RoutetablespecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : RoutetablespecpublishconnectiondetailstoConfigref
    metadata? : RoutetablespecpublishconnectiondetailstoMetadata
    name : str

schema RoutetablespecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RoutetablespecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RoutetablespecpublishconnectiondetailstoconfigrefPolicy

schema RoutetablespecpublishconnectiondetailstoconfigrefPolicy:
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

schema RoutetablespecpublishconnectiondetailstoMetadata:
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

schema RoutetablespecWriteconnectionsecrettoref:
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

schema RoutetableStatus:
    """
    A RouteTableStatus represents the observed state of a RouteTable.

    Attributes
    ----------
    atProvider : RoutetablestatusAtprovider, optional
        RouteTableObservation keeps the state for the external resource
    conditions : [RoutetablestatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : RoutetablestatusAtprovider
    conditions? : [RoutetablestatusConditionsitem]
    observedGeneration? : int

schema RoutetablestatusAtprovider:
    """
    RouteTableObservation keeps the state for the external resource

    Attributes
    ----------
    associations : [RoutetablestatusatproviderAssociationsitem], optional
        The actual associations created for the route table.
    ownerId : str, optional
        The ID of the AWS account that owns the route table.
    routeTableId : str, optional
        RouteTableID is the ID of the RouteTable.
    routes : [RoutetablestatusatproviderRoutesitem], optional
        The actual routes created for the route table.
    """
    associations? : [RoutetablestatusatproviderAssociationsitem]
    ownerId? : str
    routeTableId? : str
    routes? : [RoutetablestatusatproviderRoutesitem]

schema RoutetablestatusatproviderAssociationsitem:
    """
    AssociationState describes an association state in the route table.

    Attributes
    ----------
    associationId : str, optional
        The ID of the association between a route table and a subnet.
    main : bool, required
        Indicates whether this is the main route table.
    state : str, optional
        The state of the association.
    subnetId : str, optional
        The ID of the subnet. A subnet ID is not returned for an implicit
        association.
    """
    associationId? : str
    main : bool
    state? : str
    subnetId? : str

schema RoutetablestatusatproviderRoutesitem:
    """
    RouteState describes a route state in the route table.

    Attributes
    ----------
    destinationCidrBlock : str, optional
        The IPv4 CIDR address block used for the destination match. Routing
        decisions are based on the most specific match.
    destinationIpv6CidrBlock : str, optional
        The IPv6 CIDR address block used for the destination match. Routing
        decisions are based on the most specific match.
    gatewayId : str, optional
        The ID of an internet gateway or virtual private gateway attached to your
        VPC.
    instanceId : str, optional
        The ID of a NAT instance in your VPC. The operation fails if you specify
        an instance ID unless exactly one network interface is attached.
    localGatewayId : str, optional
        The ID of the local gateway.
    natGatewayId : str, optional
        [IPv4 traffic only] The ID of a NAT gateway.
    networkInterfaceId : str, optional
        The ID of a network interface.
    state : str, optional
        The state of the route. The blackhole state indicates that the route's
        target isn't available (for example, the specified gateway isn't attached
        to the VPC, or the specified NAT instance has been terminated).
    transitGatewayId : str, optional
        The ID of a transit gateway.
    vpcPeeringConnectionId : str, optional
        The ID of a VPC peering connection.
    """
    destinationCidrBlock? : str
    destinationIpv6CidrBlock? : str
    gatewayId? : str
    instanceId? : str
    localGatewayId? : str
    natGatewayId? : str
    networkInterfaceId? : str
    state? : str
    transitGatewayId? : str
    vpcPeeringConnectionId? : str

schema RoutetablestatusConditionsitem:
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
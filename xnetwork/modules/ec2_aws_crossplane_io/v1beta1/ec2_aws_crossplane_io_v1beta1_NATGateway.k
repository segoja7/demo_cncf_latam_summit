"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Natgateway:
    """
    A NATGateway is a managed resource that represents an AWS VPC NAT
    Gateway.

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
    spec : NatgatewaySpec, required
        NATGatewaySpec defines the desired state of a NAT Gateway
    status : NatgatewayStatus, optional
        NATGatewayStatus describes the observed state
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1beta1"
    kind : str = "NATGateway"
    metadata? : any
    spec : NatgatewaySpec
    status? : NatgatewayStatus

schema NatgatewaySpec:
    """
    NATGatewaySpec defines the desired state of a NAT Gateway

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
    forProvider : NatgatewayspecForprovider, required
        NATGatewayParameters defined the desired state of an AWS VPC NAT Gateway
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
    providerConfigRef : NatgatewayspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : NatgatewayspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : NatgatewayspecWriteconnectionsecrettoref, optional
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
    forProvider : NatgatewayspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : NatgatewayspecProviderconfigref
    publishConnectionDetailsTo? : NatgatewayspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : NatgatewayspecWriteconnectionsecrettoref

schema NatgatewayspecForprovider:
    """
    NATGatewayParameters defined the desired state of an AWS VPC NAT Gateway

    Attributes
    ----------
    allocationId : str, optional
        AllocationID is the Elastic IP allocation ID
    allocationIdRef : NatgatewayspecforproviderAllocationidref, optional
        AllocationIDRef references an EIP and retrieves it's allocation id
    allocationIdSelector : NatgatewayspecforproviderAllocationidselector, optional
        AllocationIDSelector references an EIP by selector and retrieves it's allocation id
    connectivityType : "public" | "private", optional
        Indicates whether the NAT gateway supports public or private connectivity. The
        default is public connectivity.
    region : str, required
        Region is the region you'd like your NATGateway to be created in.
    subnetId : str, optional
        SubnetID is the subnet the NAT gateways needs to be associated to
    subnetIdRef : NatgatewayspecforproviderSubnetidref, optional
        SubnetIDRef references a subnet and retrives it's subnet id
    subnetIdSelector : NatgatewayspecforproviderSubnetidselector, optional
        SubnetIDSelector references a subnet by selector and retrives it's subnet id
    tags : [NatgatewayspecforproviderTagsitem], optional
        Tags represents to current ec2 tags.
    """
    allocationId? : str
    allocationIdRef? : NatgatewayspecforproviderAllocationidref
    allocationIdSelector? : NatgatewayspecforproviderAllocationidselector
    connectivityType? : "public" | "private"
    region : str
    subnetId? : str
    subnetIdRef? : NatgatewayspecforproviderSubnetidref
    subnetIdSelector? : NatgatewayspecforproviderSubnetidselector
    tags? : [NatgatewayspecforproviderTagsitem]

schema NatgatewayspecforproviderAllocationidref:
    """
    AllocationIDRef references an EIP and retrieves it's allocation id

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NatgatewayspecforproviderallocationidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NatgatewayspecforproviderallocationidrefPolicy

schema NatgatewayspecforproviderallocationidrefPolicy:
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

schema NatgatewayspecforproviderAllocationidselector:
    """
    AllocationIDSelector references an EIP by selector and retrieves it's allocation id

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NatgatewayspecforproviderallocationidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NatgatewayspecforproviderallocationidselectorPolicy

schema NatgatewayspecforproviderallocationidselectorPolicy:
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

schema NatgatewayspecforproviderSubnetidref:
    """
    SubnetIDRef references a subnet and retrives it's subnet id

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NatgatewayspecforprovidersubnetidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NatgatewayspecforprovidersubnetidrefPolicy

schema NatgatewayspecforprovidersubnetidrefPolicy:
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

schema NatgatewayspecforproviderSubnetidselector:
    """
    SubnetIDSelector references a subnet by selector and retrives it's subnet id

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NatgatewayspecforprovidersubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NatgatewayspecforprovidersubnetidselectorPolicy

schema NatgatewayspecforprovidersubnetidselectorPolicy:
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

schema NatgatewayspecforproviderTagsitem:
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

schema NatgatewayspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NatgatewayspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NatgatewayspecproviderconfigrefPolicy

schema NatgatewayspecproviderconfigrefPolicy:
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

schema NatgatewayspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : NatgatewayspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : NatgatewayspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : NatgatewayspecpublishconnectiondetailstoConfigref
    metadata? : NatgatewayspecpublishconnectiondetailstoMetadata
    name : str

schema NatgatewayspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NatgatewayspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NatgatewayspecpublishconnectiondetailstoconfigrefPolicy

schema NatgatewayspecpublishconnectiondetailstoconfigrefPolicy:
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

schema NatgatewayspecpublishconnectiondetailstoMetadata:
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

schema NatgatewayspecWriteconnectionsecrettoref:
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

schema NatgatewayStatus:
    """
    NATGatewayStatus describes the observed state

    Attributes
    ----------
    atProvider : NatgatewaystatusAtprovider, optional
        NATGatewayObservation keeps the state for the CR
    conditions : [NatgatewaystatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : NatgatewaystatusAtprovider
    conditions? : [NatgatewaystatusConditionsitem]
    observedGeneration? : int

schema NatgatewaystatusAtprovider:
    """
    NATGatewayObservation keeps the state for the CR

    Attributes
    ----------
    createTime : str, optional
        No description available.
    deleteTime : str, optional
        No description available.
    failureCode : str, optional
        No description available.
    failureMessage : str, optional
        No description available.
    natGatewayAddresses : [NatgatewaystatusatproviderNatgatewayaddressesitem], optional
        No description available.
    natGatewayId : str, optional
        No description available.
    state : str, optional
        No description available.
    vpcId : str, optional
        No description available.
    """
    createTime? : str
    deleteTime? : str
    failureCode? : str
    failureMessage? : str
    natGatewayAddresses? : [NatgatewaystatusatproviderNatgatewayaddressesitem]
    natGatewayId? : str
    state? : str
    vpcId? : str

schema NatgatewaystatusatproviderNatgatewayaddressesitem:
    """
    NATGatewayAddress describes the details of network

    Attributes
    ----------
    allocationId : str, optional
        No description available.
    networkInterfaceId : str, optional
        No description available.
    privateIp : str, optional
        No description available.
    publicIp : str, optional
        No description available.
    """
    allocationId? : str
    networkInterfaceId? : str
    privateIp? : str
    publicIp? : str

schema NatgatewaystatusConditionsitem:
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
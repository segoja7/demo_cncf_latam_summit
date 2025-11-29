"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Subnet:
    """
    A Subnet is a managed resource that represents an AWS VPC Subnet.

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
    spec : SubnetSpec, required
        A SubnetSpec defines the desired state of a Subnet.
    status : SubnetStatus, optional
        A SubnetStatus represents the observed state of a Subnet.
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1beta1"
    kind : str = "Subnet"
    metadata? : any
    spec : SubnetSpec
    status? : SubnetStatus

schema SubnetSpec:
    """
    A SubnetSpec defines the desired state of a Subnet.

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
    forProvider : SubnetspecForprovider, required
        SubnetParameters define the desired state of an AWS VPC Subnet.
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
    providerConfigRef : SubnetspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : SubnetspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : SubnetspecWriteconnectionsecrettoref, optional
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
    forProvider : SubnetspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : SubnetspecProviderconfigref
    publishConnectionDetailsTo? : SubnetspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : SubnetspecWriteconnectionsecrettoref

schema SubnetspecForprovider:
    """
    SubnetParameters define the desired state of an AWS VPC Subnet.

    Attributes
    ----------
    assignIpv6AddressOnCreation : bool, optional
        Indicates whether a network interface created in this subnet (including a
        network interface created by RunInstances) receives an IPv6 address.
    availabilityZone : str, optional
        The Availability Zone for the subnet.
        Default: AWS selects one for you. If you create more than one subnet in your
        VPC, we may not necessarily select a different zone for each subnet.
    availabilityZoneId : str, optional
        The AZ ID or the Local Zone ID of the subnet.
    cidrBlock : str, required
        CIDRBlock is the IPv4 network range for the Subnet, in CIDR notation. For example, 10.0.0.0/18.
    ipv6CIDRBlock : str, optional
        The IPv6 network range for the subnet, in CIDR notation. The subnet size
        must use a /64 prefix length.
    mapPublicIPOnLaunch : bool, optional
        Indicates whether instances launched in this subnet receive a public IPv4
        address.
    region : str, optional
        Region is the region you'd like your Subnet to be created in.
    tags : [SubnetspecforproviderTagsitem], optional
        Tags represents to current ec2 tags.
    vpcId : str, optional
        VPCID is the ID of the VPC.
    vpcIdRef : SubnetspecforproviderVpcidref, optional
        VPCIDRef reference a VPC to retrieve its vpcId
    vpcIdSelector : SubnetspecforproviderVpcidselector, optional
        VPCIDSelector selects reference to a VPC to retrieve its vpcId
    """
    assignIpv6AddressOnCreation? : bool
    availabilityZone? : str
    availabilityZoneId? : str
    cidrBlock : str
    ipv6CIDRBlock? : str
    mapPublicIPOnLaunch? : bool
    region? : str
    tags? : [SubnetspecforproviderTagsitem]
    vpcId? : str
    vpcIdRef? : SubnetspecforproviderVpcidref
    vpcIdSelector? : SubnetspecforproviderVpcidselector

schema SubnetspecforproviderTagsitem:
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

schema SubnetspecforproviderVpcidref:
    """
    VPCIDRef reference a VPC to retrieve its vpcId

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SubnetspecforprovidervpcidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SubnetspecforprovidervpcidrefPolicy

schema SubnetspecforprovidervpcidrefPolicy:
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

schema SubnetspecforproviderVpcidselector:
    """
    VPCIDSelector selects reference to a VPC to retrieve its vpcId

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SubnetspecforprovidervpcidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : SubnetspecforprovidervpcidselectorPolicy

schema SubnetspecforprovidervpcidselectorPolicy:
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

schema SubnetspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SubnetspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SubnetspecproviderconfigrefPolicy

schema SubnetspecproviderconfigrefPolicy:
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

schema SubnetspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : SubnetspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : SubnetspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : SubnetspecpublishconnectiondetailstoConfigref
    metadata? : SubnetspecpublishconnectiondetailstoMetadata
    name : str

schema SubnetspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SubnetspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SubnetspecpublishconnectiondetailstoconfigrefPolicy

schema SubnetspecpublishconnectiondetailstoconfigrefPolicy:
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

schema SubnetspecpublishconnectiondetailstoMetadata:
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

schema SubnetspecWriteconnectionsecrettoref:
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

schema SubnetStatus:
    """
    A SubnetStatus represents the observed state of a Subnet.

    Attributes
    ----------
    atProvider : SubnetstatusAtprovider, optional
        SubnetObservation keeps the state for the external resource
    conditions : [SubnetstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : SubnetstatusAtprovider
    conditions? : [SubnetstatusConditionsitem]
    observedGeneration? : int

schema SubnetstatusAtprovider:
    """
    SubnetObservation keeps the state for the external resource

    Attributes
    ----------
    availableIpAddressCount : int, optional
        The number of unused private IPv4 addresses in the subnet.
    defaultForAz : bool, optional
        Indicates whether this is the default subnet for the Availability Zone.
    subnetId : str, optional
        SubnetID is the ID of the Subnet.
    subnetState : "pending" | "available", optional
        SubnetState is the current state of the Subnet.
    """
    availableIpAddressCount? : int
    defaultForAz? : bool
    subnetId? : str
    subnetState? : "pending" | "available"

schema SubnetstatusConditionsitem:
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
"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Vpc:
    """
    A VPC is a managed resource that represents an AWS Virtual Private Cloud.

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
    spec : VpcSpec, required
        A VPCSpec defines the desired state of a VPC.
    status : VpcStatus, optional
        A VPCStatus represents the observed state of a VPC.
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1beta1"
    kind : str = "VPC"
    metadata? : any
    spec : VpcSpec
    status? : VpcStatus

schema VpcSpec:
    """
    A VPCSpec defines the desired state of a VPC.

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
    forProvider : VpcspecForprovider, required
        VPCParameters define the desired state of an AWS Virtual Private Cloud.
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
    providerConfigRef : VpcspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : VpcspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : VpcspecWriteconnectionsecrettoref, optional
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
    forProvider : VpcspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : VpcspecProviderconfigref
    publishConnectionDetailsTo? : VpcspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : VpcspecWriteconnectionsecrettoref

schema VpcspecForprovider:
    """
    VPCParameters define the desired state of an AWS Virtual Private Cloud.

    Attributes
    ----------
    amazonProvidedIpv6CidrBlock : bool, optional
        Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the
        VPC. You cannot specify the range of IP addresses, or the size of the CIDR
        block.
    cidrBlock : str, required
        CIDRBlock is the IPv4 network range for the VPC, in CIDR notation. For
        example, 10.0.0.0/16.
    enableDnsHostNames : bool, optional
        Indicates whether the instances launched in the VPC get DNS hostnames.
    enableDnsSupport : bool, optional
        A boolean flag to enable/disable DNS support in the VPC
    enableNetworkAddressUsageMetrics : bool, optional
        Enables Network Address Usage (nau) monitoring for this VPC.
    instanceTenancy : str, optional
        The allowed tenancy of instances launched into the VPC.
    ipv6CidrBlock : str, optional
        The IPv6 CIDR block from the IPv6 address pool. You must also specify Ipv6Pool
        in the request. To let Amazon choose the IPv6 CIDR block for you, omit this
        parameter.
    ipv6Pool : str, optional
        The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
    region : str, optional
        Region is the region you'd like your VPC to be created in.
    tags : [VpcspecforproviderTagsitem], optional
        Tags are used as identification helpers between AWS resources.
    """
    amazonProvidedIpv6CidrBlock? : bool
    cidrBlock : str
    enableDnsHostNames? : bool
    enableDnsSupport? : bool
    enableNetworkAddressUsageMetrics? : bool
    instanceTenancy? : str
    ipv6CidrBlock? : str
    ipv6Pool? : str
    region? : str
    tags? : [VpcspecforproviderTagsitem]

schema VpcspecforproviderTagsitem:
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

schema VpcspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : VpcspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : VpcspecproviderconfigrefPolicy

schema VpcspecproviderconfigrefPolicy:
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

schema VpcspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : VpcspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : VpcspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : VpcspecpublishconnectiondetailstoConfigref
    metadata? : VpcspecpublishconnectiondetailstoMetadata
    name : str

schema VpcspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : VpcspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : VpcspecpublishconnectiondetailstoconfigrefPolicy

schema VpcspecpublishconnectiondetailstoconfigrefPolicy:
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

schema VpcspecpublishconnectiondetailstoMetadata:
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

schema VpcspecWriteconnectionsecrettoref:
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

schema VpcStatus:
    """
    A VPCStatus represents the observed state of a VPC.

    Attributes
    ----------
    atProvider : VpcstatusAtprovider, optional
        VPCObservation keeps the state for the external resource
    conditions : [VpcstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : VpcstatusAtprovider
    conditions? : [VpcstatusConditionsitem]
    observedGeneration? : int

schema VpcstatusAtprovider:
    """
    VPCObservation keeps the state for the external resource

    Attributes
    ----------
    cidrBlockAssociationSet : [VpcstatusatproviderCidrblockassociationsetitem], optional
        Information about the IPv4 CIDR blocks associated with the VPC.
    dhcpOptionsId : str, optional
        The ID of the set of DHCP options you've associated with the VPC.
    ipv6CidrBlockAssociationSet : [VpcstatusatproviderIpv6Cidrblockassociationsetitem], optional
        Information about the IPv6 CIDR blocks associated with the VPC.
    isDefault : bool, optional
        Indicates whether the VPC is the default VPC.
    ownerId : str, optional
        The ID of the AWS account that owns the VPC.
    vpcId : str, optional
        The ID of the VPC.
    vpcState : str, optional
        VPCState is the current state of the VPC.
    """
    cidrBlockAssociationSet? : [VpcstatusatproviderCidrblockassociationsetitem]
    dhcpOptionsId? : str
    ipv6CidrBlockAssociationSet? : [VpcstatusatproviderIpv6Cidrblockassociationsetitem]
    isDefault? : bool
    ownerId? : str
    vpcId? : str
    vpcState? : str

schema VpcstatusatproviderCidrblockassociationsetitem:
    """
    VPCCIDRBlockAssociation represents the association of IPv4 CIDR blocks with the VPC.

    Attributes
    ----------
    associationId : str, optional
        The association ID for the IPv4 CIDR block.
    cidrBlock : str, optional
        The IPv4 CIDR block.
    cidrBlockState : VpcstatusatprovidercidrblockassociationsetitemCidrblockstate, optional
        Information about the state of the CIDR block.
    """
    associationId? : str
    cidrBlock? : str
    cidrBlockState? : VpcstatusatprovidercidrblockassociationsetitemCidrblockstate

schema VpcstatusatprovidercidrblockassociationsetitemCidrblockstate:
    """
    Information about the state of the CIDR block.

    Attributes
    ----------
    state : str, optional
        The state of the CIDR block.
    statusMessage : str, optional
        A message about the status of the CIDR block, if applicable.
    """
    state? : str
    statusMessage? : str

schema VpcstatusatproviderIpv6Cidrblockassociationsetitem:
    """
    VPCIPv6CidrBlockAssociation represents the association of IPv6 CIDR blocks with the VPC.

    Attributes
    ----------
    associationId : str, optional
        The association ID for the IPv6 CIDR block.
    ipv6CidrBlock : str, optional
        The IPv6 CIDR block.
    ipv6CidrBlockState : Vpcstatusatprovideripv6CidrblockassociationsetitemIpv6Cidrblockstate, optional
        Information about the state of the CIDR block.
    ipv6Pool : str, optional
        The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.
    networkBorderGroup : str, optional
        The name of the location from which we advertise the IPV6 CIDR block.
    """
    associationId? : str
    ipv6CidrBlock? : str
    ipv6CidrBlockState? : Vpcstatusatprovideripv6CidrblockassociationsetitemIpv6Cidrblockstate
    ipv6Pool? : str
    networkBorderGroup? : str

schema Vpcstatusatprovideripv6CidrblockassociationsetitemIpv6Cidrblockstate:
    """
    Information about the state of the CIDR block.

    Attributes
    ----------
    state : str, optional
        The state of the CIDR block.
    statusMessage : str, optional
        A message about the status of the CIDR block, if applicable.
    """
    state? : str
    statusMessage? : str

schema VpcstatusConditionsitem:
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
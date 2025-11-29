"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Address:
    """
    An Address is a managed resource that represents an AWS Elastic IP Address.

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
    spec : AddressSpec, required
        An AddressSpec defines the desired state of an Address.
    status : AddressStatus, optional
        An AddressStatus represents the observed state of an Address.
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1beta1"
    kind : str = "Address"
    metadata? : any
    spec : AddressSpec
    status? : AddressStatus

schema AddressSpec:
    """
    An AddressSpec defines the desired state of an Address.

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
    forProvider : AddressspecForprovider, required
        AddressParameters define the desired state of an AWS Elastic IP
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
    providerConfigRef : AddressspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : AddressspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : AddressspecWriteconnectionsecrettoref, optional
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
    forProvider : AddressspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : AddressspecProviderconfigref
    publishConnectionDetailsTo? : AddressspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : AddressspecWriteconnectionsecrettoref

schema AddressspecForprovider:
    """
    AddressParameters define the desired state of an AWS Elastic IP

    Attributes
    ----------
    address : str, optional
        [EC2-VPC] The Elastic IP address to recover or an IPv4 address from an address
        pool.
    customerOwnedIPv4Pool : str, optional
        The ID of a customer-owned address pool. Use this parameter to let Amazon
        EC2 select an address from the address pool. Alternatively, specify a specific
        address from the address pool
    domain : "vpc" | "standard", optional
        Set to vpc to allocate the address for use with instances in a VPC.
        Default: The address is for use with instances in EC2-Classic.
    networkBorderGroup : str, optional
        The location from which the IP address is advertised. Use this parameter
        to limit the address to this location.

        A network border group is a unique set of Availability Zones or Local Zones
        from where AWS advertises IP addresses and limits the addresses to the group.
        IP addresses cannot move between network border groups.

        Use DescribeAvailabilityZones (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html)
        to view the network border groups.

        You cannot use a network border group with EC2 Classic. If you attempt this
        operation on EC2 classic, you will receive an InvalidParameterCombination
        error. For more information, see Error Codes (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html).
    publicIpv4Pool : str, optional
        The ID of an address pool that you own. Use this parameter to let Amazon
        EC2 select an address from the address pool. To specify a specific address
        from the address pool, use the Address parameter instead.
    region : str, required
        Region is the region you'd like your Address to be created in.
    tags : [AddressspecforproviderTagsitem], optional
        Tags represents to current ec2 tags.
    """
    address? : str
    customerOwnedIPv4Pool? : str
    domain? : "vpc" | "standard"
    networkBorderGroup? : str
    publicIpv4Pool? : str
    region : str
    tags? : [AddressspecforproviderTagsitem]

schema AddressspecforproviderTagsitem:
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

schema AddressspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AddressspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AddressspecproviderconfigrefPolicy

schema AddressspecproviderconfigrefPolicy:
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

schema AddressspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : AddressspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : AddressspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : AddressspecpublishconnectiondetailstoConfigref
    metadata? : AddressspecpublishconnectiondetailstoMetadata
    name : str

schema AddressspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AddressspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AddressspecpublishconnectiondetailstoconfigrefPolicy

schema AddressspecpublishconnectiondetailstoconfigrefPolicy:
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

schema AddressspecpublishconnectiondetailstoMetadata:
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

schema AddressspecWriteconnectionsecrettoref:
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

schema AddressStatus:
    """
    An AddressStatus represents the observed state of an Address.

    Attributes
    ----------
    atProvider : AddressstatusAtprovider, optional
        AddressObservation keeps the state for the external resource
    conditions : [AddressstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : AddressstatusAtprovider
    conditions? : [AddressstatusConditionsitem]
    observedGeneration? : int

schema AddressstatusAtprovider:
    """
    AddressObservation keeps the state for the external resource

    Attributes
    ----------
    allocationId : str, optional
        The ID representing the allocation of the address for use with EC2-VPC.
    associationId : str, optional
        The ID representing the association of the address with an instance in a
        VPC.
    customerOwnedIp : str, optional
        The customer-owned IP address.
    customerOwnedIpv4Pool : str, optional
        The ID of the customer-owned address pool.
    domain : str, required
        Indicates whether this Elastic IP address is for use with instances in EC2-Classic
        (standard) or instances in a VPC (vpc).
    instanceId : str, optional
        The ID of the instance that the address is associated with (if any).
    networkBorderGroup : str, optional
        The name of the location from which the IP address is advertised.
    networkInterfaceId : str, required
        The ID of the network interface.
    networkInterfaceOwnerId : str, optional
        The ID of the AWS account that owns the network interface.
    privateIpAddress : str, required
        The private IP address associated with the Elastic IP address.
    publicIp : str, required
        The Elastic IP address.
    publicIpv4Pool : str, optional
        The ID of an address pool.
    """
    allocationId? : str
    associationId? : str
    customerOwnedIp? : str
    customerOwnedIpv4Pool? : str
    domain : str
    instanceId? : str
    networkBorderGroup? : str
    networkInterfaceId : str
    networkInterfaceOwnerId? : str
    privateIpAddress : str
    publicIp : str
    publicIpv4Pool? : str

schema AddressstatusConditionsitem:
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
"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Vpcendpoint:
    """
    VPCEndpoint is the Schema for the VPCEndpoints API

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
    spec : VpcendpointSpec, required
        VPCEndpointSpec defines the desired state of VPCEndpoint
    status : VpcendpointStatus, optional
        VPCEndpointStatus defines the observed state of VPCEndpoint.
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1alpha1"
    kind : str = "VPCEndpoint"
    metadata? : any
    spec : VpcendpointSpec
    status? : VpcendpointStatus

schema VpcendpointSpec:
    """
    VPCEndpointSpec defines the desired state of VPCEndpoint

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
    forProvider : VpcendpointspecForprovider, required
        VPCEndpointParameters defines the desired state of VPCEndpoint
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
    providerConfigRef : VpcendpointspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : VpcendpointspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : VpcendpointspecWriteconnectionsecrettoref, optional
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
    forProvider : VpcendpointspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : VpcendpointspecProviderconfigref
    publishConnectionDetailsTo? : VpcendpointspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : VpcendpointspecWriteconnectionsecrettoref

schema VpcendpointspecForprovider:
    """
    VPCEndpointParameters defines the desired state of VPCEndpoint

    Attributes
    ----------
    dnsOptions : VpcendpointspecforproviderDnsoptions, optional
        The DNS options for the endpoint.
    ipAddressType : str, optional
        The IP address type for the endpoint.
    policyDocument : str, optional
        (Interface and gateway endpoints) A policy to attach to the endpoint that
        controls access to the service. The policy must be in valid JSON format.
        If this parameter is not specified, we attach a default policy that allows
        full access to the service.
    privateDNSEnabled : bool, optional
        (Interface endpoint) Indicates whether to associate a private hosted zone
        with the specified VPC. The private hosted zone contains a record set for
        the default public DNS name for the service for the Region (for example,
        kinesis.us-east-1.amazonaws.com), which resolves to the private IP addresses
        of the endpoint network interfaces in the VPC. This enables you to make requests
        to the default public DNS name for the service instead of the public DNS
        names that are automatically generated by the VPC endpoint service.

        To use a private hosted zone, you must set the following VPC attributes to
        true: enableDnsHostnames and enableDnsSupport. Use ModifyVpcAttribute to
        set the VPC attributes.

        Default: true
    region : str, required
        Region is which region the VPCEndpoint will be created.
    routeTableIdRefs : [VpcendpointspecforproviderRoutetableidrefsitem], optional
        RouteTableIDRefs is a list of references to RouteTables used to set
        the RouteTableIDs.
    routeTableIdSelector : VpcendpointspecforproviderRoutetableidselector, optional
        RouteTableIDsSelector selects references to RouteTables used
        to set the RouteTableIDs.
    routeTableIds : [str], optional
        (Gateway endpoint) One or more route table IDs.
    securityGroupIdRefs : [VpcendpointspecforproviderSecuritygroupidrefsitem], optional
        SecurityGroupIDRefs is a list of references to SecurityGroups used to set
        the SecurityGroupIDs.
    securityGroupIdSelector : VpcendpointspecforproviderSecuritygroupidselector, optional
        SecurityGroupIDsSelector selects references to SecurityGroupID used
        to set the SecurityGroupIDs.
    securityGroupIds : [str], optional
        (Interface endpoint) The ID of one or more security groups to associate with
        the endpoint network interface.
    serviceName : str, required
        The name of the endpoint service.
    subnetConfigurations : [VpcendpointspecforproviderSubnetconfigurationsitem], optional
        The subnet configurations for the endpoint.
    subnetIdRefs : [VpcendpointspecforproviderSubnetidrefsitem], optional
        SubnetIDRefs is a list of references to Subnets used to set
        the SubnetIDs.
    subnetIdSelector : VpcendpointspecforproviderSubnetidselector, optional
        SubnetIDsSelector selects references to Subnets used
        to set the SubnetIDs.
    subnetIds : [str], optional
        (Interface and Gateway Load Balancer endpoints) The ID of one or more subnets
        in which to create an endpoint network interface. For a Gateway Load Balancer
        endpoint, you can specify one subnet only.
    tagSpecifications : [VpcendpointspecforproviderTagspecificationsitem], optional
        The tags to associate with the endpoint.
    tags : {str:str}, optional
        Metadata tagging key value pairs
    vpcEndpointType : str, optional
        The type of endpoint.

        Default: Gateway
    vpcId : str, optional
        The ID of the VPC. You must specify this parameter in the request.
    vpcIdRef : VpcendpointspecforproviderVpcidref, optional
        VPCIDRef is a reference to an API used to set
        the VPCID.
    vpcIdSelector : VpcendpointspecforproviderVpcidselector, optional
        VPCIDSelector selects references to API used
        to set the VPCID.
    """
    dnsOptions? : VpcendpointspecforproviderDnsoptions
    ipAddressType? : str
    policyDocument? : str
    privateDNSEnabled? : bool
    region : str
    routeTableIdRefs? : [VpcendpointspecforproviderRoutetableidrefsitem]
    routeTableIdSelector? : VpcendpointspecforproviderRoutetableidselector
    routeTableIds? : [str]
    securityGroupIdRefs? : [VpcendpointspecforproviderSecuritygroupidrefsitem]
    securityGroupIdSelector? : VpcendpointspecforproviderSecuritygroupidselector
    securityGroupIds? : [str]
    serviceName : str
    subnetConfigurations? : [VpcendpointspecforproviderSubnetconfigurationsitem]
    subnetIdRefs? : [VpcendpointspecforproviderSubnetidrefsitem]
    subnetIdSelector? : VpcendpointspecforproviderSubnetidselector
    subnetIds? : [str]
    tagSpecifications? : [VpcendpointspecforproviderTagspecificationsitem]
    tags? : {str:str}
    vpcEndpointType? : str
    vpcId? : str
    vpcIdRef? : VpcendpointspecforproviderVpcidref
    vpcIdSelector? : VpcendpointspecforproviderVpcidselector

schema VpcendpointspecforproviderDnsoptions:
    """
    The DNS options for the endpoint.

    Attributes
    ----------
    dnsRecordIPType : str, optional
        No description available.
    privateDNSOnlyForInboundResolverEndpoint : bool, optional
        No description available.
    """
    dnsRecordIPType? : str
    privateDNSOnlyForInboundResolverEndpoint? : bool

schema VpcendpointspecforproviderRoutetableidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : VpcendpointspecforproviderroutetableidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : VpcendpointspecforproviderroutetableidrefsitemPolicy

schema VpcendpointspecforproviderroutetableidrefsitemPolicy:
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

schema VpcendpointspecforproviderRoutetableidselector:
    """
    RouteTableIDsSelector selects references to RouteTables used
    to set the RouteTableIDs.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : VpcendpointspecforproviderroutetableidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : VpcendpointspecforproviderroutetableidselectorPolicy

schema VpcendpointspecforproviderroutetableidselectorPolicy:
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

schema VpcendpointspecforproviderSecuritygroupidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : VpcendpointspecforprovidersecuritygroupidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : VpcendpointspecforprovidersecuritygroupidrefsitemPolicy

schema VpcendpointspecforprovidersecuritygroupidrefsitemPolicy:
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

schema VpcendpointspecforproviderSecuritygroupidselector:
    """
    SecurityGroupIDsSelector selects references to SecurityGroupID used
    to set the SecurityGroupIDs.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : VpcendpointspecforprovidersecuritygroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : VpcendpointspecforprovidersecuritygroupidselectorPolicy

schema VpcendpointspecforprovidersecuritygroupidselectorPolicy:
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

schema VpcendpointspecforproviderSubnetconfigurationsitem:
    """
    VpcendpointspecforproviderSubnetconfigurationsitem schema.

    Attributes
    ----------
    ipv4 : str, optional
        No description available.
    ipv6 : str, optional
        No description available.
    subnetID : str, optional
        No description available.
    """
    ipv4? : str
    ipv6? : str
    subnetID? : str

schema VpcendpointspecforproviderSubnetidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : VpcendpointspecforprovidersubnetidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : VpcendpointspecforprovidersubnetidrefsitemPolicy

schema VpcendpointspecforprovidersubnetidrefsitemPolicy:
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

schema VpcendpointspecforproviderSubnetidselector:
    """
    SubnetIDsSelector selects references to Subnets used
    to set the SubnetIDs.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : VpcendpointspecforprovidersubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : VpcendpointspecforprovidersubnetidselectorPolicy

schema VpcendpointspecforprovidersubnetidselectorPolicy:
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

schema VpcendpointspecforproviderTagspecificationsitem:
    """
    VpcendpointspecforproviderTagspecificationsitem schema.

    Attributes
    ----------
    resourceType : str, optional
        No description available.
    tags : [VpcendpointspecforprovidertagspecificationsitemTagsitem], optional
        No description available.
    """
    resourceType? : str
    tags? : [VpcendpointspecforprovidertagspecificationsitemTagsitem]

schema VpcendpointspecforprovidertagspecificationsitemTagsitem:
    """
    VpcendpointspecforprovidertagspecificationsitemTagsitem schema.

    Attributes
    ----------
    key : str, optional
        No description available.
    value : str, optional
        No description available.
    """
    key? : str
    value? : str

schema VpcendpointspecforproviderVpcidref:
    """
    VPCIDRef is a reference to an API used to set
    the VPCID.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : VpcendpointspecforprovidervpcidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : VpcendpointspecforprovidervpcidrefPolicy

schema VpcendpointspecforprovidervpcidrefPolicy:
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

schema VpcendpointspecforproviderVpcidselector:
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
    policy : VpcendpointspecforprovidervpcidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : VpcendpointspecforprovidervpcidselectorPolicy

schema VpcendpointspecforprovidervpcidselectorPolicy:
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

schema VpcendpointspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : VpcendpointspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : VpcendpointspecproviderconfigrefPolicy

schema VpcendpointspecproviderconfigrefPolicy:
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

schema VpcendpointspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : VpcendpointspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : VpcendpointspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : VpcendpointspecpublishconnectiondetailstoConfigref
    metadata? : VpcendpointspecpublishconnectiondetailstoMetadata
    name : str

schema VpcendpointspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : VpcendpointspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : VpcendpointspecpublishconnectiondetailstoconfigrefPolicy

schema VpcendpointspecpublishconnectiondetailstoconfigrefPolicy:
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

schema VpcendpointspecpublishconnectiondetailstoMetadata:
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

schema VpcendpointspecWriteconnectionsecrettoref:
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

schema VpcendpointStatus:
    """
    VPCEndpointStatus defines the observed state of VPCEndpoint.

    Attributes
    ----------
    atProvider : VpcendpointstatusAtprovider, optional
        VPCEndpointObservation defines the observed state of VPCEndpoint
    conditions : [VpcendpointstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : VpcendpointstatusAtprovider
    conditions? : [VpcendpointstatusConditionsitem]
    observedGeneration? : int

schema VpcendpointstatusAtprovider:
    """
    VPCEndpointObservation defines the observed state of VPCEndpoint

    Attributes
    ----------
    creationTimestamp : str, optional
        The date and time that the endpoint was created.
    dnsEntries : [VpcendpointstatusatproviderDnsentriesitem], optional
        (Interface endpoint) The DNS entries for the endpoint.
    groups : [VpcendpointstatusatproviderGroupsitem], optional
        (Interface endpoint) Information about the security groups that are associated
        with the network interface.
    lastError : VpcendpointstatusatproviderLasterror, optional
        The last error that occurred for endpoint.
    networkInterfaceIDs : [str], optional
        (Interface endpoint) The network interfaces for the endpoint.
    ownerID : str, optional
        The ID of the Amazon Web Services account that owns the endpoint.
    requesterManaged : bool, optional
        Indicates whether the endpoint is being managed by its service.
    routeTableIDs : [str], optional
        (Gateway endpoint) The IDs of the route tables associated with the endpoint.
    state : str, optional
        The state of the endpoint.
    subnetIDs : [str], optional
        (Interface endpoint) The subnets for the endpoint.
    tags : [VpcendpointstatusatproviderTagsitem], optional
        The tags assigned to the endpoint.
    vpcEndpointID : str, optional
        The ID of the endpoint.
    vpcID : str, optional
        The ID of the VPC to which the endpoint is associated.
    """
    creationTimestamp? : str
    dnsEntries? : [VpcendpointstatusatproviderDnsentriesitem]
    groups? : [VpcendpointstatusatproviderGroupsitem]
    lastError? : VpcendpointstatusatproviderLasterror
    networkInterfaceIDs? : [str]
    ownerID? : str
    requesterManaged? : bool
    routeTableIDs? : [str]
    state? : str
    subnetIDs? : [str]
    tags? : [VpcendpointstatusatproviderTagsitem]
    vpcEndpointID? : str
    vpcID? : str

schema VpcendpointstatusatproviderDnsentriesitem:
    """
    VpcendpointstatusatproviderDnsentriesitem schema.

    Attributes
    ----------
    dnsName : str, optional
        No description available.
    hostedZoneID : str, optional
        No description available.
    """
    dnsName? : str
    hostedZoneID? : str

schema VpcendpointstatusatproviderGroupsitem:
    """
    VpcendpointstatusatproviderGroupsitem schema.

    Attributes
    ----------
    groupID : str, optional
        No description available.
    groupName : str, optional
        No description available.
    """
    groupID? : str
    groupName? : str

schema VpcendpointstatusatproviderLasterror:
    """
    The last error that occurred for endpoint.

    Attributes
    ----------
    code : str, optional
        No description available.
    message : str, optional
        No description available.
    """
    code? : str
    message? : str

schema VpcendpointstatusatproviderTagsitem:
    """
    VpcendpointstatusatproviderTagsitem schema.

    Attributes
    ----------
    key : str, optional
        No description available.
    value : str, optional
        No description available.
    """
    key? : str
    value? : str

schema VpcendpointstatusConditionsitem:
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
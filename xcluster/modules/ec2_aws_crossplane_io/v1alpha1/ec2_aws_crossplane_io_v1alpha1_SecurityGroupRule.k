"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Securitygrouprule:
    """
    A SecurityGroupRule is a managed resource that represents an SecurityGroupRule

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
    spec : SecuritygroupruleSpec, required
        A SecurityGroupRuleSpec defines the desired state of a SecurityGroupRule.
    status : SecuritygroupruleStatus, optional
        A SecurityGroupRuleStatus represents the observed state of a SecurityGroupRule.
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1alpha1"
    kind : str = "SecurityGroupRule"
    metadata? : any
    spec : SecuritygroupruleSpec
    status? : SecuritygroupruleStatus

schema SecuritygroupruleSpec:
    """
    A SecurityGroupRuleSpec defines the desired state of a SecurityGroupRule.

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
    forProvider : SecuritygrouprulespecForprovider, required
        SecurityGroupRuleParameters define the desired state of the SecurityGroupRule
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
    providerConfigRef : SecuritygrouprulespecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : SecuritygrouprulespecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : SecuritygrouprulespecWriteconnectionsecrettoref, optional
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
    forProvider : SecuritygrouprulespecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : SecuritygrouprulespecProviderconfigref
    publishConnectionDetailsTo? : SecuritygrouprulespecPublishconnectiondetailsto
    writeConnectionSecretToRef? : SecuritygrouprulespecWriteconnectionsecrettoref

schema SecuritygrouprulespecForprovider:
    """
    SecurityGroupRuleParameters define the desired state of the SecurityGroupRule

    Attributes
    ----------
    cidrBlock : str, optional
        No description available.
    description : str, optional
        No description available.
    fromPort : int, required
        No description available.
    ipv6cidrBlock : str, optional
        No description available.
    prefixListId : str, optional
        No description available.
    protocol : str, required
        No description available.
    region : str, required
        Region is the region you'd like your resource to be created in.
    securityGroupId : str, optional
        If using a SecurityGroup managed by crossplane as reference,
        enable ignoreIngress or ignoreEgress on the sg to prevent the
        rules to be constantly created and deleted
    securityGroupIdRef : SecuritygrouprulespecforproviderSecuritygroupidref, optional
        If using a SecurityGroup managed by crossplane as reference,
        enable ignoreIngress or ignoreEgress on the sg to prevent the
        rules to be constantly created and deleted
    securityGroupIdSelector : SecuritygrouprulespecforproviderSecuritygroupidselector, optional
        A Selector selects an object.
    sourceSecurityGroupId : str, optional
        No description available.
    sourceSecurityGroupIdRef : SecuritygrouprulespecforproviderSourcesecuritygroupidref, optional
        A Reference to a named object.
    sourceSecurityGroupIdSelector : SecuritygrouprulespecforproviderSourcesecuritygroupidselector, optional
        A Selector selects an object.
    toPort : int, required
        No description available.
    type : str, required
        Type of rule, ingress (inbound) or egress (outbound).
    """
    cidrBlock? : str
    description? : str
    fromPort : int
    ipv6cidrBlock? : str
    prefixListId? : str
    protocol : str
    region : str
    securityGroupId? : str
    securityGroupIdRef? : SecuritygrouprulespecforproviderSecuritygroupidref
    securityGroupIdSelector? : SecuritygrouprulespecforproviderSecuritygroupidselector
    sourceSecurityGroupId? : str
    sourceSecurityGroupIdRef? : SecuritygrouprulespecforproviderSourcesecuritygroupidref
    sourceSecurityGroupIdSelector? : SecuritygrouprulespecforproviderSourcesecuritygroupidselector
    toPort : int
    type : str

schema SecuritygrouprulespecforproviderSecuritygroupidref:
    """
    If using a SecurityGroup managed by crossplane as reference,
    enable ignoreIngress or ignoreEgress on the sg to prevent the
    rules to be constantly created and deleted

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygrouprulespecforprovidersecuritygroupidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygrouprulespecforprovidersecuritygroupidrefPolicy

schema SecuritygrouprulespecforprovidersecuritygroupidrefPolicy:
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

schema SecuritygrouprulespecforproviderSecuritygroupidselector:
    """
    A Selector selects an object.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecuritygrouprulespecforprovidersecuritygroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : SecuritygrouprulespecforprovidersecuritygroupidselectorPolicy

schema SecuritygrouprulespecforprovidersecuritygroupidselectorPolicy:
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

schema SecuritygrouprulespecforproviderSourcesecuritygroupidref:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygrouprulespecforprovidersourcesecuritygroupidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygrouprulespecforprovidersourcesecuritygroupidrefPolicy

schema SecuritygrouprulespecforprovidersourcesecuritygroupidrefPolicy:
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

schema SecuritygrouprulespecforproviderSourcesecuritygroupidselector:
    """
    A Selector selects an object.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecuritygrouprulespecforprovidersourcesecuritygroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : SecuritygrouprulespecforprovidersourcesecuritygroupidselectorPolicy

schema SecuritygrouprulespecforprovidersourcesecuritygroupidselectorPolicy:
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

schema SecuritygrouprulespecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygrouprulespecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygrouprulespecproviderconfigrefPolicy

schema SecuritygrouprulespecproviderconfigrefPolicy:
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

schema SecuritygrouprulespecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : SecuritygrouprulespecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : SecuritygrouprulespecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : SecuritygrouprulespecpublishconnectiondetailstoConfigref
    metadata? : SecuritygrouprulespecpublishconnectiondetailstoMetadata
    name : str

schema SecuritygrouprulespecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygrouprulespecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygrouprulespecpublishconnectiondetailstoconfigrefPolicy

schema SecuritygrouprulespecpublishconnectiondetailstoconfigrefPolicy:
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

schema SecuritygrouprulespecpublishconnectiondetailstoMetadata:
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

schema SecuritygrouprulespecWriteconnectionsecrettoref:
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

schema SecuritygroupruleStatus:
    """
    A SecurityGroupRuleStatus represents the observed state of a SecurityGroupRule.

    Attributes
    ----------
    atProvider : SecuritygrouprulestatusAtprovider, optional
        SecurityGroupRuleObservation keeps the state for the external resource
    conditions : [SecuritygrouprulestatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : SecuritygrouprulestatusAtprovider
    conditions? : [SecuritygrouprulestatusConditionsitem]
    observedGeneration? : int

schema SecuritygrouprulestatusAtprovider:
    """
    SecurityGroupRuleObservation keeps the state for the external resource

    Attributes
    ----------
    SecurityGroupRuleId : str, optional
        The association ID for the SecurityGroupRule block.
    """
    SecurityGroupRuleId? : str

schema SecuritygrouprulestatusConditionsitem:
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
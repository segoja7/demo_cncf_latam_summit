"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Loggroup:
    """
    LogGroup is the Schema for the LogGroups API

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
    spec : LoggroupSpec, required
        LogGroupSpec defines the desired state of LogGroup
    status : LoggroupStatus, optional
        LogGroupStatus defines the observed state of LogGroup.
    """
    apiVersion : str = "cloudwatchlogs.aws.crossplane.io/v1alpha1"
    kind : str = "LogGroup"
    metadata? : any
    spec : LoggroupSpec
    status? : LoggroupStatus

schema LoggroupSpec:
    """
    LogGroupSpec defines the desired state of LogGroup

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
    forProvider : LoggroupspecForprovider, required
        LogGroupParameters defines the desired state of LogGroup
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
    providerConfigRef : LoggroupspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : LoggroupspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : LoggroupspecWriteconnectionsecrettoref, optional
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
    forProvider : LoggroupspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : LoggroupspecProviderconfigref
    publishConnectionDetailsTo? : LoggroupspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : LoggroupspecWriteconnectionsecrettoref

schema LoggroupspecForprovider:
    """
    LogGroupParameters defines the desired state of LogGroup

    Attributes
    ----------
    kmsKeyID : str, optional
        The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.
        For more information, see Amazon Resource Names - AWS Key Management Service
        (AWS KMS) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms).
    kmsKeyIDRef : LoggroupspecforproviderKmskeyidref, optional
        KMSKeyIDRef is a reference to a KMS Key used to set KMSKeyID.
    kmsKeyIDSelector : LoggroupspecforproviderKmskeyidselector, optional
        KMSKeyIDSelector selects a reference to a KMS Key used to set KMSKeyID.
    logGroupName : str, required
        The name of the log group.
    region : str, required
        Region is which region the LogGroup will be created.
    retentionInDays : int, optional
        The number of days to retain the log events in the specified log group.
        If you select 0, the events in the log group are always retained and never expire.
    tags : {str:str}, optional
        The key-value pairs to use for the tags.

        You can grant users access to certain log groups while preventing them from
        accessing other log groups. To do so, tag your groups and use IAM policies
        that refer to those tags. To assign tags when you create a log group, you
        must have either the logs:TagResource or logs:TagLogGroup permission. For
        more information about tagging, see Tagging Amazon Web Services resources
        (https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html). For more
        information about using tags to control access, see Controlling access to
        Amazon Web Services resources using tags (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
    """
    kmsKeyID? : str
    kmsKeyIDRef? : LoggroupspecforproviderKmskeyidref
    kmsKeyIDSelector? : LoggroupspecforproviderKmskeyidselector
    logGroupName : str
    region : str
    retentionInDays? : int
    tags? : {str:str}

schema LoggroupspecforproviderKmskeyidref:
    """
    KMSKeyIDRef is a reference to a KMS Key used to set KMSKeyID.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : LoggroupspecforproviderkmskeyidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : LoggroupspecforproviderkmskeyidrefPolicy

schema LoggroupspecforproviderkmskeyidrefPolicy:
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

schema LoggroupspecforproviderKmskeyidselector:
    """
    KMSKeyIDSelector selects a reference to a KMS Key used to set KMSKeyID.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : LoggroupspecforproviderkmskeyidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : LoggroupspecforproviderkmskeyidselectorPolicy

schema LoggroupspecforproviderkmskeyidselectorPolicy:
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

schema LoggroupspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : LoggroupspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : LoggroupspecproviderconfigrefPolicy

schema LoggroupspecproviderconfigrefPolicy:
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

schema LoggroupspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : LoggroupspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : LoggroupspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : LoggroupspecpublishconnectiondetailstoConfigref
    metadata? : LoggroupspecpublishconnectiondetailstoMetadata
    name : str

schema LoggroupspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : LoggroupspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : LoggroupspecpublishconnectiondetailstoconfigrefPolicy

schema LoggroupspecpublishconnectiondetailstoconfigrefPolicy:
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

schema LoggroupspecpublishconnectiondetailstoMetadata:
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

schema LoggroupspecWriteconnectionsecrettoref:
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

schema LoggroupStatus:
    """
    LogGroupStatus defines the observed state of LogGroup.

    Attributes
    ----------
    atProvider : LoggroupstatusAtprovider, optional
        LogGroupObservation defines the observed state of LogGroup
    conditions : [LoggroupstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : LoggroupstatusAtprovider
    conditions? : [LoggroupstatusConditionsitem]
    observedGeneration? : int

schema LoggroupstatusAtprovider:
    """
    LogGroupObservation defines the observed state of LogGroup

    Attributes
    ----------
    arn : str, optional
        The Amazon Resource Name (ARN) of the log group.
    creationTime : int, optional
        The creation time of the log group, expressed as the number of milliseconds
        after Jan 1, 1970 00:00:00 UTC.
    kmsKeyID : str, optional
        The Amazon Resource Name (ARN) of the KMS key to use when encrypting log
        data.
    logGroupName : str, optional
        The name of the log group.
    metricFilterCount : int, optional
        The number of metric filters.
    retentionInDays : int, optional
        No description available.
    storedBytes : int, optional
        The number of bytes stored.
    """
    arn? : str
    creationTime? : int
    kmsKeyID? : str
    logGroupName? : str
    metricFilterCount? : int
    retentionInDays? : int
    storedBytes? : int

schema LoggroupstatusConditionsitem:
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
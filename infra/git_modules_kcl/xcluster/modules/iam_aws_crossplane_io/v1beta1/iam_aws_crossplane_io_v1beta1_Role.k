"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Role:
    """
    A Role is a managed resource that represents an AWS IAM Role.

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
    spec : RoleSpec, required
        A RoleSpec defines the desired state of a Role.
    status : RoleStatus, optional
        A RoleStatus represents the observed state of a Role.
    """
    apiVersion : str = "iam.aws.crossplane.io/v1beta1"
    kind : str = "Role"
    metadata? : any
    spec : RoleSpec
    status? : RoleStatus

schema RoleSpec:
    """
    A RoleSpec defines the desired state of a Role.

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
    forProvider : RolespecForprovider, required
        RoleParameters define the desired state of an AWS IAM Role.
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
    providerConfigRef : RolespecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : RolespecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : RolespecWriteconnectionsecrettoref, optional
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
    forProvider : RolespecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : RolespecProviderconfigref
    publishConnectionDetailsTo? : RolespecPublishconnectiondetailsto
    writeConnectionSecretToRef? : RolespecWriteconnectionsecrettoref

schema RolespecForprovider:
    """
    RoleParameters define the desired state of an AWS IAM Role.

    Attributes
    ----------
    assumeRolePolicyDocument : str, required
        AssumeRolePolicyDocument is the the trust relationship policy document
        that grants an entity permission to assume the role.
    description : str, optional
        Description is a description of the role.
    maxSessionDuration : int, optional
        MaxSessionDuration is the duration (in seconds) that you want to set for the specified
        role. The default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
        Default: 3600
    path : str, optional
        Path is the path to the role.
        Default: /
    permissionsBoundary : str, optional
        PermissionsBoundary is the ARN of the policy that is used to set the permissions boundary for the role.
    tags : [RolespecforproviderTagsitem], optional
        Tags. For more information about
        tagging, see Tagging IAM Identities (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
        in the IAM User Guide.
    """
    assumeRolePolicyDocument : str
    description? : str
    maxSessionDuration? : int
    path? : str
    permissionsBoundary? : str
    tags? : [RolespecforproviderTagsitem]

schema RolespecforproviderTagsitem:
    """
    Tag represents user-provided metadata that can be associated
    with a IAM role. For more information about tagging,
    see Tagging IAM Identities (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
    in the IAM User Guide.

    Attributes
    ----------
    key : str, required
        The key name that can be used to look up or retrieve the associated value.
        For example, Department or Cost Center are common choices.
    value : str, optional
        The value associated with this tag. For example, tags with a key name of
        Department could have values such as Human Resources, Accounting, and Support.
        Tags with a key name of Cost Center might have values that consist of the
        number associated with the different cost centers in your company. Typically,
        many resources have tags with the same key name but with different values.

        AWS always interprets the tag Value as a single string. If you need to store
        an array, you can store comma-separated values in the string. However, you
        must interpret the value in your code.
    """
    key : str
    value? : str

schema RolespecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RolespecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RolespecproviderconfigrefPolicy

schema RolespecproviderconfigrefPolicy:
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

schema RolespecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : RolespecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : RolespecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : RolespecpublishconnectiondetailstoConfigref
    metadata? : RolespecpublishconnectiondetailstoMetadata
    name : str

schema RolespecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RolespecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RolespecpublishconnectiondetailstoconfigrefPolicy

schema RolespecpublishconnectiondetailstoconfigrefPolicy:
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

schema RolespecpublishconnectiondetailstoMetadata:
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

schema RolespecWriteconnectionsecrettoref:
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

schema RoleStatus:
    """
    A RoleStatus represents the observed state of a Role.

    Attributes
    ----------
    atProvider : RolestatusAtprovider, optional
        RoleExternalStatus keeps the state for the external resource
    conditions : [RolestatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : RolestatusAtprovider
    conditions? : [RolestatusConditionsitem]
    observedGeneration? : int

schema RolestatusAtprovider:
    """
    RoleExternalStatus keeps the state for the external resource

    Attributes
    ----------
    arn : str, required
        ARN is the Amazon Resource Name (ARN) specifying the role. For more information
        about ARNs and how to use them in policies, see IAM Identifiers (http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
        in the IAM User Guide guide.
    createDate : str, optional
        The date and time, in ISO 8601 date-time format
        (http://www.iso.org/iso/iso8601), when the role was created.
    roleID : str, required
        RoleID is the stable and unique string identifying the role. For more information about
        IDs, see IAM Identifiers (http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
        in the Using IAM guide.
    roleLastUsed : RolestatusatproviderRolelastused, optional
        Contains information about the last time that an IAM role was used. This
        includes the date and time and the Region in which the role was last used.
        Activity is only reported for the trailing 400 days. This period can be shorter
        if your Region began supporting these features within the last year. The role
        might have been used more than 400 days ago. For more information, see Regions
        where data is tracked
        (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)
        in the IAM User Guide.
    """
    arn : str
    createDate? : str
    roleID : str
    roleLastUsed? : RolestatusatproviderRolelastused

schema RolestatusatproviderRolelastused:
    """
    Contains information about the last time that an IAM role was used. This
    includes the date and time and the Region in which the role was last used.
    Activity is only reported for the trailing 400 days. This period can be shorter
    if your Region began supporting these features within the last year. The role
    might have been used more than 400 days ago. For more information, see Regions
    where data is tracked
    (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)
    in the IAM User Guide.

    Attributes
    ----------
    lastUsedDate : str, optional
        The date and time, in ISO 8601 date-time format (http://www.iso.org/iso/iso8601)
        that the role was last used. This field is null if the role has not been used
        within the IAM tracking period. For more information about the tracking period,
        see Regions where data is tracked
        (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)
        in the IAM User Guide.
    region : str, optional
        The name of the Amazon Web Services Region in which the role was last used.
    """
    lastUsedDate? : str
    region? : str

schema RolestatusConditionsitem:
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
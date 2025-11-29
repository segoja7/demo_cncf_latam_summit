"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Rolepolicyattachment:
    """
    A RolePolicyAttachment is a managed resource that represents an AWS IAM
    Role policy attachment.

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
    spec : RolepolicyattachmentSpec, required
        A RolePolicyAttachmentSpec defines the desired state of an
        RolePolicyAttachment.
    status : RolepolicyattachmentStatus, optional
        A RolePolicyAttachmentStatus represents the observed state of an
        RolePolicyAttachment.
    """
    apiVersion : str = "iam.aws.crossplane.io/v1beta1"
    kind : str = "RolePolicyAttachment"
    metadata? : any
    spec : RolepolicyattachmentSpec
    status? : RolepolicyattachmentStatus

schema RolepolicyattachmentSpec:
    """
    A RolePolicyAttachmentSpec defines the desired state of an
    RolePolicyAttachment.

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
    forProvider : RolepolicyattachmentspecForprovider, required
        RolePolicyAttachmentParameters define the desired state of an AWS IAM
        Role policy attachment.
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
    providerConfigRef : RolepolicyattachmentspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : RolepolicyattachmentspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : RolepolicyattachmentspecWriteconnectionsecrettoref, optional
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
    forProvider : RolepolicyattachmentspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : RolepolicyattachmentspecProviderconfigref
    publishConnectionDetailsTo? : RolepolicyattachmentspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : RolepolicyattachmentspecWriteconnectionsecrettoref

schema RolepolicyattachmentspecForprovider:
    """
    RolePolicyAttachmentParameters define the desired state of an AWS IAM
    Role policy attachment.

    Attributes
    ----------
    policyArn : str, optional
        PolicyARN is the Amazon Resource Name (ARN) of the IAM policy you want to
        attach.
    policyArnRef : RolepolicyattachmentspecforproviderPolicyarnref, optional
        PolicyARNRef references a Policy to retrieve its Policy ARN.
    policyArnSelector : RolepolicyattachmentspecforproviderPolicyarnselector, optional
        PolicyARNSelector selects a reference to a Policy to retrieve its
        Policy ARN
    roleName : str, optional
        RoleName presents the name of the IAM role.
    roleNameRef : RolepolicyattachmentspecforproviderRolenameref, optional
        RoleNameRef references a Role to retrieve its Name
    roleNameSelector : RolepolicyattachmentspecforproviderRolenameselector, optional
        RoleNameSelector selects a reference to a Role to retrieve its Name
    """
    policyArn? : str
    policyArnRef? : RolepolicyattachmentspecforproviderPolicyarnref
    policyArnSelector? : RolepolicyattachmentspecforproviderPolicyarnselector
    roleName? : str
    roleNameRef? : RolepolicyattachmentspecforproviderRolenameref
    roleNameSelector? : RolepolicyattachmentspecforproviderRolenameselector

schema RolepolicyattachmentspecforproviderPolicyarnref:
    """
    PolicyARNRef references a Policy to retrieve its Policy ARN.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RolepolicyattachmentspecforproviderpolicyarnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RolepolicyattachmentspecforproviderpolicyarnrefPolicy

schema RolepolicyattachmentspecforproviderpolicyarnrefPolicy:
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

schema RolepolicyattachmentspecforproviderPolicyarnselector:
    """
    PolicyARNSelector selects a reference to a Policy to retrieve its
    Policy ARN

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : RolepolicyattachmentspecforproviderpolicyarnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : RolepolicyattachmentspecforproviderpolicyarnselectorPolicy

schema RolepolicyattachmentspecforproviderpolicyarnselectorPolicy:
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

schema RolepolicyattachmentspecforproviderRolenameref:
    """
    RoleNameRef references a Role to retrieve its Name

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RolepolicyattachmentspecforproviderrolenamerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RolepolicyattachmentspecforproviderrolenamerefPolicy

schema RolepolicyattachmentspecforproviderrolenamerefPolicy:
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

schema RolepolicyattachmentspecforproviderRolenameselector:
    """
    RoleNameSelector selects a reference to a Role to retrieve its Name

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : RolepolicyattachmentspecforproviderrolenameselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : RolepolicyattachmentspecforproviderrolenameselectorPolicy

schema RolepolicyattachmentspecforproviderrolenameselectorPolicy:
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

schema RolepolicyattachmentspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RolepolicyattachmentspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RolepolicyattachmentspecproviderconfigrefPolicy

schema RolepolicyattachmentspecproviderconfigrefPolicy:
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

schema RolepolicyattachmentspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : RolepolicyattachmentspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : RolepolicyattachmentspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : RolepolicyattachmentspecpublishconnectiondetailstoConfigref
    metadata? : RolepolicyattachmentspecpublishconnectiondetailstoMetadata
    name : str

schema RolepolicyattachmentspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : RolepolicyattachmentspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : RolepolicyattachmentspecpublishconnectiondetailstoconfigrefPolicy

schema RolepolicyattachmentspecpublishconnectiondetailstoconfigrefPolicy:
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

schema RolepolicyattachmentspecpublishconnectiondetailstoMetadata:
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

schema RolepolicyattachmentspecWriteconnectionsecrettoref:
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

schema RolepolicyattachmentStatus:
    """
    A RolePolicyAttachmentStatus represents the observed state of an
    RolePolicyAttachment.

    Attributes
    ----------
    atProvider : RolepolicyattachmentstatusAtprovider, optional
        RolePolicyAttachmentExternalStatus keeps the state for the external resource
    conditions : [RolepolicyattachmentstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : RolepolicyattachmentstatusAtprovider
    conditions? : [RolepolicyattachmentstatusConditionsitem]
    observedGeneration? : int

schema RolepolicyattachmentstatusAtprovider:
    """
    RolePolicyAttachmentExternalStatus keeps the state for the external resource

    Attributes
    ----------
    attachedPolicyArn : str, required
        AttachedPolicyARN is the arn for the attached policy. If nil, the policy
        is not yet attached
    """
    attachedPolicyArn : str

schema RolepolicyattachmentstatusConditionsitem:
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
"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Accessentry:
    """
    AccessEntry is the Schema for the AccessEntrys API. Access Entry Configurations for an EKS Cluster.

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
    spec : AccessentrySpec, required
        AccessEntrySpec defines the desired state of AccessEntry
    status : AccessentryStatus, optional
        AccessEntryStatus defines the observed state of AccessEntry.
    """
    apiVersion : str = "eks.aws.upbound.io/v1beta1"
    kind : str = "AccessEntry"
    metadata? : any
    spec : AccessentrySpec
    status? : AccessentryStatus

schema AccessentrySpec:
    """
    AccessEntrySpec defines the desired state of AccessEntry

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
    forProvider : AccessentryspecForprovider, required
        No description available.
    initProvider : AccessentryspecInitprovider, optional
        THIS IS A BETA FIELD. It will be honored
        unless the Management Policies feature flag is disabled.
        InitProvider holds the same fields as ForProvider, with the exception
        of Identifier and other resource reference fields. The fields that are
        in InitProvider are merged into ForProvider when the resource is created.
        The same fields are also added to the terraform ignore_changes hook, to
        avoid updating them after creation. This is useful for fields that are
        required on creation, but we do not desire to update them after creation,
        for example because of an external controller is managing them, like an
        autoscaler.
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
    providerConfigRef : AccessentryspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    writeConnectionSecretToRef : AccessentryspecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    """
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : AccessentryspecForprovider
    initProvider? : AccessentryspecInitprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : AccessentryspecProviderconfigref
    writeConnectionSecretToRef? : AccessentryspecWriteconnectionsecrettoref

schema AccessentryspecForprovider:
    """
    AccessentryspecForprovider schema.

    Attributes
    ----------
    clusterName : str, optional
        Name of the EKS Cluster.
    clusterNameRef : AccessentryspecforproviderClusternameref, optional
        Reference to a Cluster in eks to populate clusterName.
    clusterNameSelector : AccessentryspecforproviderClusternameselector, optional
        Selector for a Cluster in eks to populate clusterName.
    kubernetesGroups : [str], optional
        List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
    principalArn : str, optional
        The IAM Principal ARN which requires Authentication access to the EKS cluster.
    principalArnFromRoleRef : AccessentryspecforproviderPrincipalarnfromroleref, optional
        Reference to a Role in iam to populate principalArn.
    principalArnFromRoleSelector : AccessentryspecforproviderPrincipalarnfromroleselector, optional
        Selector for a Role in iam to populate principalArn.
    region : str, required
        Region where this resource will be managed. Defaults to the Region set in the provider configuration.
        Region is the region you'd like your resource to be created in.
    tags : {str:str}, optional
        Key-value map of resource tags.
    type : str, optional
        Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
    userName : str, optional
        Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
    """
    clusterName? : str
    clusterNameRef? : AccessentryspecforproviderClusternameref
    clusterNameSelector? : AccessentryspecforproviderClusternameselector
    kubernetesGroups? : [str]
    principalArn? : str
    principalArnFromRoleRef? : AccessentryspecforproviderPrincipalarnfromroleref
    principalArnFromRoleSelector? : AccessentryspecforproviderPrincipalarnfromroleselector
    region : str
    tags? : {str:str}
    type? : str
    userName? : str

schema AccessentryspecforproviderClusternameref:
    """
    Reference to a Cluster in eks to populate clusterName.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AccessentryspecforproviderclusternamerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AccessentryspecforproviderclusternamerefPolicy

schema AccessentryspecforproviderclusternamerefPolicy:
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

schema AccessentryspecforproviderClusternameselector:
    """
    Selector for a Cluster in eks to populate clusterName.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AccessentryspecforproviderclusternameselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : AccessentryspecforproviderclusternameselectorPolicy

schema AccessentryspecforproviderclusternameselectorPolicy:
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

schema AccessentryspecforproviderPrincipalarnfromroleref:
    """
    Reference to a Role in iam to populate principalArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AccessentryspecforproviderprincipalarnfromrolerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AccessentryspecforproviderprincipalarnfromrolerefPolicy

schema AccessentryspecforproviderprincipalarnfromrolerefPolicy:
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

schema AccessentryspecforproviderPrincipalarnfromroleselector:
    """
    Selector for a Role in iam to populate principalArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AccessentryspecforproviderprincipalarnfromroleselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : AccessentryspecforproviderprincipalarnfromroleselectorPolicy

schema AccessentryspecforproviderprincipalarnfromroleselectorPolicy:
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

schema AccessentryspecInitprovider:
    """
    THIS IS A BETA FIELD. It will be honored
    unless the Management Policies feature flag is disabled.
    InitProvider holds the same fields as ForProvider, with the exception
    of Identifier and other resource reference fields. The fields that are
    in InitProvider are merged into ForProvider when the resource is created.
    The same fields are also added to the terraform ignore_changes hook, to
    avoid updating them after creation. This is useful for fields that are
    required on creation, but we do not desire to update them after creation,
    for example because of an external controller is managing them, like an
    autoscaler.

    Attributes
    ----------
    kubernetesGroups : [str], optional
        List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
    tags : {str:str}, optional
        Key-value map of resource tags.
    type : str, optional
        Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
    userName : str, optional
        Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
    """
    kubernetesGroups? : [str]
    tags? : {str:str}
    type? : str
    userName? : str

schema AccessentryspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AccessentryspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AccessentryspecproviderconfigrefPolicy

schema AccessentryspecproviderconfigrefPolicy:
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

schema AccessentryspecWriteconnectionsecrettoref:
    """
    WriteConnectionSecretToReference specifies the namespace and name of a
    Secret to which any connection details for this managed resource should
    be written. Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    name : str, required
        Name of the secret.
    namespace : str, required
        Namespace of the secret.
    """
    name : str
    namespace : str

schema AccessentryStatus:
    """
    AccessEntryStatus defines the observed state of AccessEntry.

    Attributes
    ----------
    atProvider : AccessentrystatusAtprovider, optional
        No description available.
    conditions : [AccessentrystatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : AccessentrystatusAtprovider
    conditions? : [AccessentrystatusConditionsitem]
    observedGeneration? : int

schema AccessentrystatusAtprovider:
    """
    AccessentrystatusAtprovider schema.

    Attributes
    ----------
    accessEntryArn : str, optional
        Amazon Resource Name (ARN) of the Access Entry.
    clusterName : str, optional
        Name of the EKS Cluster.
    createdAt : str, optional
        Date and time in RFC3339 format that the EKS add-on was created.
    id : str, optional
        No description available.
    kubernetesGroups : [str], optional
        List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
    modifiedAt : str, optional
        Date and time in RFC3339 format that the EKS add-on was updated.
    principalArn : str, optional
        The IAM Principal ARN which requires Authentication access to the EKS cluster.
    region : str, optional
        Region where this resource will be managed. Defaults to the Region set in the provider configuration.
        Region is the region you'd like your resource to be created in.
    tags : {str:str}, optional
        Key-value map of resource tags.
    tagsAll : {str:str}, optional
        Key-value map of resource tags, including those inherited from the provider default_tags configuration block.
    type : str, optional
        Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
    userName : str, optional
        Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
    """
    accessEntryArn? : str
    clusterName? : str
    createdAt? : str
    id? : str
    kubernetesGroups? : [str]
    modifiedAt? : str
    principalArn? : str
    region? : str
    tags? : {str:str}
    tagsAll? : {str:str}
    type? : str
    userName? : str

schema AccessentrystatusConditionsitem:
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
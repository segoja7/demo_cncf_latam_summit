"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Clusterauth:
    """
    ClusterAuth is used to retrieve Kubeconfig of given EKS cluster.

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
    spec : ClusterauthSpec, required
        ClusterAuthSpec defines the desired state of ClusterAuth
    status : ClusterauthStatus, optional
        ClusterAuthStatus defines the observed state of ClusterAuth.
    """
    apiVersion : str = "eks.aws.upbound.io/v1beta1"
    kind : str = "ClusterAuth"
    metadata? : any
    spec : ClusterauthSpec
    status? : ClusterauthStatus

schema ClusterauthSpec:
    """
    ClusterAuthSpec defines the desired state of ClusterAuth

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
    forProvider : ClusterauthspecForprovider, required
        No description available.
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
    providerConfigRef : ClusterauthspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    writeConnectionSecretToRef : ClusterauthspecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    """
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : ClusterauthspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : ClusterauthspecProviderconfigref
    writeConnectionSecretToRef? : ClusterauthspecWriteconnectionsecrettoref

schema ClusterauthspecForprovider:
    """
    ClusterauthspecForprovider schema.

    Attributes
    ----------
    clusterName : str, optional
        ClusterName is the name of the cluster you'd like to fetch Kubeconfig of.
        Either ClusterName, ClusterNameRef or ClusterNameSelector has to be given.
    clusterNameRef : ClusterauthspecforproviderClusternameref, optional
        Reference to a Cluster to populate clusterName.
        Either ClusterName, ClusterNameRef or ClusterNameSelector has to be given.
    clusterNameSelector : ClusterauthspecforproviderClusternameselector, optional
        Selector for a Cluster to populate clusterName.
        Either ClusterName, ClusterNameRef or ClusterNameSelector has to be given.
    refreshPeriod : str, optional
        RefreshPeriod is how frequently you'd like the token in the published
        Kubeconfig to be refreshed. The maximum is 10m0s.
        The default is 10m0s.
    region : str, required
        Region is the region you'd like your resource to be created in.
    """
    clusterName? : str
    clusterNameRef? : ClusterauthspecforproviderClusternameref
    clusterNameSelector? : ClusterauthspecforproviderClusternameselector
    refreshPeriod? : str
    region : str

schema ClusterauthspecforproviderClusternameref:
    """
    Reference to a Cluster to populate clusterName.
    Either ClusterName, ClusterNameRef or ClusterNameSelector has to be given.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterauthspecforproviderclusternamerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterauthspecforproviderclusternamerefPolicy

schema ClusterauthspecforproviderclusternamerefPolicy:
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

schema ClusterauthspecforproviderClusternameselector:
    """
    Selector for a Cluster to populate clusterName.
    Either ClusterName, ClusterNameRef or ClusterNameSelector has to be given.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterauthspecforproviderclusternameselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterauthspecforproviderclusternameselectorPolicy

schema ClusterauthspecforproviderclusternameselectorPolicy:
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

schema ClusterauthspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterauthspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterauthspecproviderconfigrefPolicy

schema ClusterauthspecproviderconfigrefPolicy:
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

schema ClusterauthspecWriteconnectionsecrettoref:
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

schema ClusterauthStatus:
    """
    ClusterAuthStatus defines the observed state of ClusterAuth.

    Attributes
    ----------
    atProvider : ClusterauthstatusAtprovider, optional
        No description available.
    conditions : [ClusterauthstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : ClusterauthstatusAtprovider
    conditions? : [ClusterauthstatusConditionsitem]
    observedGeneration? : int

schema ClusterauthstatusAtprovider:
    """
    ClusterauthstatusAtprovider schema.

    Attributes
    ----------
    lastRefreshTime : str, optional
        LastRefreshTime is the time when the token was refreshed.
    """
    lastRefreshTime? : str

schema ClusterauthstatusConditionsitem:
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
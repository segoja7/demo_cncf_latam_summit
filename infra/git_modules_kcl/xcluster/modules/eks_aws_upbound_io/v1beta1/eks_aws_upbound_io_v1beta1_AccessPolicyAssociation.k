"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Accesspolicyassociation:
    """
    AccessPolicyAssociation is the Schema for the AccessPolicyAssociations API. <no value>

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
    spec : AccesspolicyassociationSpec, required
        AccessPolicyAssociationSpec defines the desired state of AccessPolicyAssociation
    status : AccesspolicyassociationStatus, optional
        AccessPolicyAssociationStatus defines the observed state of AccessPolicyAssociation.
    """
    apiVersion : str = "eks.aws.upbound.io/v1beta1"
    kind : str = "AccessPolicyAssociation"
    metadata? : any
    spec : AccesspolicyassociationSpec
    status? : AccesspolicyassociationStatus

schema AccesspolicyassociationSpec:
    """
    AccessPolicyAssociationSpec defines the desired state of AccessPolicyAssociation

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
    forProvider : AccesspolicyassociationspecForprovider, required
        No description available.
    initProvider : AccesspolicyassociationspecInitprovider, optional
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
    providerConfigRef : AccesspolicyassociationspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    writeConnectionSecretToRef : AccesspolicyassociationspecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    """
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : AccesspolicyassociationspecForprovider
    initProvider? : AccesspolicyassociationspecInitprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : AccesspolicyassociationspecProviderconfigref
    writeConnectionSecretToRef? : AccesspolicyassociationspecWriteconnectionsecrettoref

schema AccesspolicyassociationspecForprovider:
    """
    AccesspolicyassociationspecForprovider schema.

    Attributes
    ----------
    accessScope : AccesspolicyassociationspecforproviderAccessscope, optional
        No description available.
    clusterName : str, optional
        No description available.
    clusterNameRef : AccesspolicyassociationspecforproviderClusternameref, optional
        Reference to a Cluster in eks to populate clusterName.
    clusterNameSelector : AccesspolicyassociationspecforproviderClusternameselector, optional
        Selector for a Cluster in eks to populate clusterName.
    policyArn : str, required
        No description available.
    principalArn : str, optional
        No description available.
    principalArnRef : AccesspolicyassociationspecforproviderPrincipalarnref, optional
        Reference to a AccessEntry in eks to populate principalArn.
    principalArnSelector : AccesspolicyassociationspecforproviderPrincipalarnselector, optional
        Selector for a AccessEntry in eks to populate principalArn.
    region : str, required
        Region is the region you'd like your resource to be created in.
    """
    accessScope? : AccesspolicyassociationspecforproviderAccessscope
    clusterName? : str
    clusterNameRef? : AccesspolicyassociationspecforproviderClusternameref
    clusterNameSelector? : AccesspolicyassociationspecforproviderClusternameselector
    policyArn : str
    principalArn? : str
    principalArnRef? : AccesspolicyassociationspecforproviderPrincipalarnref
    principalArnSelector? : AccesspolicyassociationspecforproviderPrincipalarnselector
    region : str

schema AccesspolicyassociationspecforproviderAccessscope:
    """
    AccesspolicyassociationspecforproviderAccessscope schema.

    Attributes
    ----------
    namespaces : [str], optional
        No description available.
    type : str, optional
        No description available.
    """
    namespaces? : [str]
    type? : str

schema AccesspolicyassociationspecforproviderClusternameref:
    """
    Reference to a Cluster in eks to populate clusterName.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AccesspolicyassociationspecforproviderclusternamerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AccesspolicyassociationspecforproviderclusternamerefPolicy

schema AccesspolicyassociationspecforproviderclusternamerefPolicy:
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

schema AccesspolicyassociationspecforproviderClusternameselector:
    """
    Selector for a Cluster in eks to populate clusterName.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AccesspolicyassociationspecforproviderclusternameselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : AccesspolicyassociationspecforproviderclusternameselectorPolicy

schema AccesspolicyassociationspecforproviderclusternameselectorPolicy:
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

schema AccesspolicyassociationspecforproviderPrincipalarnref:
    """
    Reference to a AccessEntry in eks to populate principalArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AccesspolicyassociationspecforproviderprincipalarnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AccesspolicyassociationspecforproviderprincipalarnrefPolicy

schema AccesspolicyassociationspecforproviderprincipalarnrefPolicy:
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

schema AccesspolicyassociationspecforproviderPrincipalarnselector:
    """
    Selector for a AccessEntry in eks to populate principalArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AccesspolicyassociationspecforproviderprincipalarnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : AccesspolicyassociationspecforproviderprincipalarnselectorPolicy

schema AccesspolicyassociationspecforproviderprincipalarnselectorPolicy:
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

schema AccesspolicyassociationspecInitprovider:
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
    accessScope : AccesspolicyassociationspecinitproviderAccessscope, optional
        No description available.
    """
    accessScope? : AccesspolicyassociationspecinitproviderAccessscope

schema AccesspolicyassociationspecinitproviderAccessscope:
    """
    AccesspolicyassociationspecinitproviderAccessscope schema.

    Attributes
    ----------
    namespaces : [str], optional
        No description available.
    type : str, optional
        No description available.
    """
    namespaces? : [str]
    type? : str

schema AccesspolicyassociationspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AccesspolicyassociationspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AccesspolicyassociationspecproviderconfigrefPolicy

schema AccesspolicyassociationspecproviderconfigrefPolicy:
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

schema AccesspolicyassociationspecWriteconnectionsecrettoref:
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

schema AccesspolicyassociationStatus:
    """
    AccessPolicyAssociationStatus defines the observed state of AccessPolicyAssociation.

    Attributes
    ----------
    atProvider : AccesspolicyassociationstatusAtprovider, optional
        No description available.
    conditions : [AccesspolicyassociationstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : AccesspolicyassociationstatusAtprovider
    conditions? : [AccesspolicyassociationstatusConditionsitem]
    observedGeneration? : int

schema AccesspolicyassociationstatusAtprovider:
    """
    AccesspolicyassociationstatusAtprovider schema.

    Attributes
    ----------
    accessScope : AccesspolicyassociationstatusatproviderAccessscope, optional
        No description available.
    associatedAt : str, optional
        No description available.
    clusterName : str, optional
        No description available.
    id : str, optional
        No description available.
    modifiedAt : str, optional
        No description available.
    policyArn : str, optional
        No description available.
    principalArn : str, optional
        No description available.
    region : str, optional
        Region is the region you'd like your resource to be created in.
    """
    accessScope? : AccesspolicyassociationstatusatproviderAccessscope
    associatedAt? : str
    clusterName? : str
    id? : str
    modifiedAt? : str
    policyArn? : str
    principalArn? : str
    region? : str

schema AccesspolicyassociationstatusatproviderAccessscope:
    """
    AccesspolicyassociationstatusatproviderAccessscope schema.

    Attributes
    ----------
    namespaces : [str], optional
        No description available.
    type : str, optional
        No description available.
    """
    namespaces? : [str]
    type? : str

schema AccesspolicyassociationstatusConditionsitem:
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
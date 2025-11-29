"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Addon:
    """
    Addon is the Schema for the Addons API. Manages an EKS add-on

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
    spec : AddonSpec, required
        AddonSpec defines the desired state of Addon
    status : AddonStatus, optional
        AddonStatus defines the observed state of Addon.
    """
    apiVersion : str = "eks.aws.upbound.io/v1beta1"
    kind : str = "Addon"
    metadata? : any
    spec : AddonSpec
    status? : AddonStatus

schema AddonSpec:
    """
    AddonSpec defines the desired state of Addon

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
    forProvider : AddonspecForprovider, required
        No description available.
    initProvider : AddonspecInitprovider, optional
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
    providerConfigRef : AddonspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    writeConnectionSecretToRef : AddonspecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    """
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : AddonspecForprovider
    initProvider? : AddonspecInitprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : AddonspecProviderconfigref
    writeConnectionSecretToRef? : AddonspecWriteconnectionsecrettoref

schema AddonspecForprovider:
    """
    AddonspecForprovider schema.

    Attributes
    ----------
    addonName : str, optional
        Name of the EKS add-on. The name must match one of
        the names returned by describe-addon-versions.
    addonVersion : str, optional
        The version of the EKS add-on. The version must
        match one of the versions returned by describe-addon-versions.
    clusterName : str, optional
        Name of the EKS Cluster.
    clusterNameRef : AddonspecforproviderClusternameref, optional
        Reference to a Cluster in eks to populate clusterName.
    clusterNameSelector : AddonspecforproviderClusternameselector, optional
        Selector for a Cluster in eks to populate clusterName.
    configurationValues : str, optional
        custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from describe-addon-configuration.
    podIdentityAssociation : [AddonspecforproviderPodidentityassociationitem], optional
        Configuration block with EKS Pod Identity association settings. See pod_identity_association below for details.
    preserve : bool, optional
        Indicates if you want to preserve the created resources when deleting the EKS add-on.
    region : str, required
        Region where this resource will be managed. Defaults to the Region set in the provider configuration.
        Region is the region you'd like your resource to be created in.
    resolveConflictsOnCreate : str, optional
        How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are NONE and OVERWRITE. For more details see the CreateAddon API Documentation.
    resolveConflictsOnUpdate : str, optional
        How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are NONE, OVERWRITE, and PRESERVE. For more details see the UpdateAddon API Documentation.
    serviceAccountRoleArn : str, optional
        The Amazon Resource Name (ARN) of an
        existing IAM role to bind to the add-on's service account. The role must be
        assigned the IAM permissions required by the add-on. If you don't specify
        an existing IAM role, then the add-on uses the permissions assigned to the node
        IAM role. For more information, see Amazon EKS node IAM role
        in the Amazon EKS User Guide.
    serviceAccountRoleArnRef : AddonspecforproviderServiceaccountrolearnref, optional
        Reference to a Role in iam to populate serviceAccountRoleArn.
    serviceAccountRoleArnSelector : AddonspecforproviderServiceaccountrolearnselector, optional
        Selector for a Role in iam to populate serviceAccountRoleArn.
    tags : {str:str}, optional
        Key-value map of resource tags.
    """
    addonName? : str
    addonVersion? : str
    clusterName? : str
    clusterNameRef? : AddonspecforproviderClusternameref
    clusterNameSelector? : AddonspecforproviderClusternameselector
    configurationValues? : str
    podIdentityAssociation? : [AddonspecforproviderPodidentityassociationitem]
    preserve? : bool
    region : str
    resolveConflictsOnCreate? : str
    resolveConflictsOnUpdate? : str
    serviceAccountRoleArn? : str
    serviceAccountRoleArnRef? : AddonspecforproviderServiceaccountrolearnref
    serviceAccountRoleArnSelector? : AddonspecforproviderServiceaccountrolearnselector
    tags? : {str:str}

schema AddonspecforproviderClusternameref:
    """
    Reference to a Cluster in eks to populate clusterName.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AddonspecforproviderclusternamerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AddonspecforproviderclusternamerefPolicy

schema AddonspecforproviderclusternamerefPolicy:
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

schema AddonspecforproviderClusternameselector:
    """
    Selector for a Cluster in eks to populate clusterName.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AddonspecforproviderclusternameselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : AddonspecforproviderclusternameselectorPolicy

schema AddonspecforproviderclusternameselectorPolicy:
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

schema AddonspecforproviderPodidentityassociationitem:
    """
    AddonspecforproviderPodidentityassociationitem schema.

    Attributes
    ----------
    roleArn : str, optional
        The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
    serviceAccount : str, optional
        The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
    """
    roleArn? : str
    serviceAccount? : str

schema AddonspecforproviderServiceaccountrolearnref:
    """
    Reference to a Role in iam to populate serviceAccountRoleArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AddonspecforproviderserviceaccountrolearnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AddonspecforproviderserviceaccountrolearnrefPolicy

schema AddonspecforproviderserviceaccountrolearnrefPolicy:
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

schema AddonspecforproviderServiceaccountrolearnselector:
    """
    Selector for a Role in iam to populate serviceAccountRoleArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AddonspecforproviderserviceaccountrolearnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : AddonspecforproviderserviceaccountrolearnselectorPolicy

schema AddonspecforproviderserviceaccountrolearnselectorPolicy:
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

schema AddonspecInitprovider:
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
    addonName : str, optional
        Name of the EKS add-on. The name must match one of
        the names returned by describe-addon-versions.
    addonVersion : str, optional
        The version of the EKS add-on. The version must
        match one of the versions returned by describe-addon-versions.
    clusterName : str, optional
        Name of the EKS Cluster.
    clusterNameRef : AddonspecinitproviderClusternameref, optional
        Reference to a Cluster in eks to populate clusterName.
    clusterNameSelector : AddonspecinitproviderClusternameselector, optional
        Selector for a Cluster in eks to populate clusterName.
    configurationValues : str, optional
        custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from describe-addon-configuration.
    podIdentityAssociation : [AddonspecinitproviderPodidentityassociationitem], optional
        Configuration block with EKS Pod Identity association settings. See pod_identity_association below for details.
    preserve : bool, optional
        Indicates if you want to preserve the created resources when deleting the EKS add-on.
    resolveConflictsOnCreate : str, optional
        How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are NONE and OVERWRITE. For more details see the CreateAddon API Documentation.
    resolveConflictsOnUpdate : str, optional
        How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are NONE, OVERWRITE, and PRESERVE. For more details see the UpdateAddon API Documentation.
    serviceAccountRoleArn : str, optional
        The Amazon Resource Name (ARN) of an
        existing IAM role to bind to the add-on's service account. The role must be
        assigned the IAM permissions required by the add-on. If you don't specify
        an existing IAM role, then the add-on uses the permissions assigned to the node
        IAM role. For more information, see Amazon EKS node IAM role
        in the Amazon EKS User Guide.
    serviceAccountRoleArnRef : AddonspecinitproviderServiceaccountrolearnref, optional
        Reference to a Role in iam to populate serviceAccountRoleArn.
    serviceAccountRoleArnSelector : AddonspecinitproviderServiceaccountrolearnselector, optional
        Selector for a Role in iam to populate serviceAccountRoleArn.
    tags : {str:str}, optional
        Key-value map of resource tags.
    """
    addonName? : str
    addonVersion? : str
    clusterName? : str
    clusterNameRef? : AddonspecinitproviderClusternameref
    clusterNameSelector? : AddonspecinitproviderClusternameselector
    configurationValues? : str
    podIdentityAssociation? : [AddonspecinitproviderPodidentityassociationitem]
    preserve? : bool
    resolveConflictsOnCreate? : str
    resolveConflictsOnUpdate? : str
    serviceAccountRoleArn? : str
    serviceAccountRoleArnRef? : AddonspecinitproviderServiceaccountrolearnref
    serviceAccountRoleArnSelector? : AddonspecinitproviderServiceaccountrolearnselector
    tags? : {str:str}

schema AddonspecinitproviderClusternameref:
    """
    Reference to a Cluster in eks to populate clusterName.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AddonspecinitproviderclusternamerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AddonspecinitproviderclusternamerefPolicy

schema AddonspecinitproviderclusternamerefPolicy:
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

schema AddonspecinitproviderClusternameselector:
    """
    Selector for a Cluster in eks to populate clusterName.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AddonspecinitproviderclusternameselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : AddonspecinitproviderclusternameselectorPolicy

schema AddonspecinitproviderclusternameselectorPolicy:
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

schema AddonspecinitproviderPodidentityassociationitem:
    """
    AddonspecinitproviderPodidentityassociationitem schema.

    Attributes
    ----------
    roleArn : str, optional
        The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
    serviceAccount : str, optional
        The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
    """
    roleArn? : str
    serviceAccount? : str

schema AddonspecinitproviderServiceaccountrolearnref:
    """
    Reference to a Role in iam to populate serviceAccountRoleArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AddonspecinitproviderserviceaccountrolearnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AddonspecinitproviderserviceaccountrolearnrefPolicy

schema AddonspecinitproviderserviceaccountrolearnrefPolicy:
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

schema AddonspecinitproviderServiceaccountrolearnselector:
    """
    Selector for a Role in iam to populate serviceAccountRoleArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : AddonspecinitproviderserviceaccountrolearnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : AddonspecinitproviderserviceaccountrolearnselectorPolicy

schema AddonspecinitproviderserviceaccountrolearnselectorPolicy:
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

schema AddonspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AddonspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AddonspecproviderconfigrefPolicy

schema AddonspecproviderconfigrefPolicy:
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

schema AddonspecWriteconnectionsecrettoref:
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

schema AddonStatus:
    """
    AddonStatus defines the observed state of Addon.

    Attributes
    ----------
    atProvider : AddonstatusAtprovider, optional
        No description available.
    conditions : [AddonstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : AddonstatusAtprovider
    conditions? : [AddonstatusConditionsitem]
    observedGeneration? : int

schema AddonstatusAtprovider:
    """
    AddonstatusAtprovider schema.

    Attributes
    ----------
    addonName : str, optional
        Name of the EKS add-on. The name must match one of
        the names returned by describe-addon-versions.
    addonVersion : str, optional
        The version of the EKS add-on. The version must
        match one of the versions returned by describe-addon-versions.
    arn : str, optional
        Amazon Resource Name (ARN) of the EKS add-on.
    clusterName : str, optional
        Name of the EKS Cluster.
    configurationValues : str, optional
        custom configuration values for addons with single JSON string. This JSON string value must match the JSON schema derived from describe-addon-configuration.
    createdAt : str, optional
        Date and time in RFC3339 format that the EKS add-on was created.
    id : str, optional
        EKS Cluster name and EKS Addon name separated by a colon (:).
    modifiedAt : str, optional
        Date and time in RFC3339 format that the EKS add-on was updated.
    podIdentityAssociation : [AddonstatusatproviderPodidentityassociationitem], optional
        Configuration block with EKS Pod Identity association settings. See pod_identity_association below for details.
    preserve : bool, optional
        Indicates if you want to preserve the created resources when deleting the EKS add-on.
    region : str, optional
        Region where this resource will be managed. Defaults to the Region set in the provider configuration.
        Region is the region you'd like your resource to be created in.
    resolveConflictsOnCreate : str, optional
        How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are NONE and OVERWRITE. For more details see the CreateAddon API Documentation.
    resolveConflictsOnUpdate : str, optional
        How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are NONE, OVERWRITE, and PRESERVE. For more details see the UpdateAddon API Documentation.
    serviceAccountRoleArn : str, optional
        The Amazon Resource Name (ARN) of an
        existing IAM role to bind to the add-on's service account. The role must be
        assigned the IAM permissions required by the add-on. If you don't specify
        an existing IAM role, then the add-on uses the permissions assigned to the node
        IAM role. For more information, see Amazon EKS node IAM role
        in the Amazon EKS User Guide.
    tags : {str:str}, optional
        Key-value map of resource tags.
    tagsAll : {str:str}, optional
        Key-value map of resource tags, including those inherited from the provider default_tags configuration block.
    """
    addonName? : str
    addonVersion? : str
    arn? : str
    clusterName? : str
    configurationValues? : str
    createdAt? : str
    id? : str
    modifiedAt? : str
    podIdentityAssociation? : [AddonstatusatproviderPodidentityassociationitem]
    preserve? : bool
    region? : str
    resolveConflictsOnCreate? : str
    resolveConflictsOnUpdate? : str
    serviceAccountRoleArn? : str
    tags? : {str:str}
    tagsAll? : {str:str}

schema AddonstatusatproviderPodidentityassociationitem:
    """
    AddonstatusatproviderPodidentityassociationitem schema.

    Attributes
    ----------
    roleArn : str, optional
        The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
    serviceAccount : str, optional
        The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
    """
    roleArn? : str
    serviceAccount? : str

schema AddonstatusConditionsitem:
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
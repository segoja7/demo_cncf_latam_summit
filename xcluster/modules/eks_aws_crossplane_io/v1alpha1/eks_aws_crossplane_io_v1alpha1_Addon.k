"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Addon:
    """
    Addon is the Schema for the Addons API

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
    apiVersion : str = "eks.aws.crossplane.io/v1alpha1"
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
        AddonParameters defines the desired state of Addon
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
    publishConnectionDetailsTo : AddonspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : AddonspecWriteconnectionsecrettoref, optional
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
    forProvider : AddonspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : AddonspecProviderconfigref
    publishConnectionDetailsTo? : AddonspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : AddonspecWriteconnectionsecrettoref

schema AddonspecForprovider:
    """
    AddonParameters defines the desired state of Addon

    Attributes
    ----------
    addonName : str, required
        The name of the add-on. The name must match one of the names that DescribeAddonVersions
        (https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html)
        returns.
    addonVersion : str, optional
        The version of the add-on. The version must match one of the versions returned
        by DescribeAddonVersions (https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html).
    clusterName : str, optional
        The name of the cluster to create the add-on for.
    clusterNameRef : AddonspecforproviderClusternameref, optional
        ClusterNameRef is a reference to a Cluster used to set
        the ClusterName.
    clusterNameSelector : AddonspecforproviderClusternameselector, optional
        ClusterNameSelector selects references to a Cluster used
        to set the ClusterName.
    configurationValues : str, optional
        The set of configuration values for the add-on that's created. The values
        that you provide are validated against the schema in DescribeAddonConfiguration
        (https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonConfiguration.html).
    region : str, required
        Region is which region the Addon will be created.
    resolveConflicts : str, optional
        How to resolve field value conflicts for an Amazon EKS add-on. Conflicts
        are handled based on the value you choose:

           * None – If the self-managed version of the add-on is installed on your
           cluster, Amazon EKS doesn't change the value. Creation of the add-on might
           fail.

           * Overwrite – If the self-managed version of the add-on is installed
           on your cluster and the Amazon EKS default value is different than the
           existing value, Amazon EKS changes the value to the Amazon EKS default
           value.

           * Preserve – This is similar to the NONE option. If the self-managed
           version of the add-on is installed on your cluster Amazon EKS doesn't
           change the add-on resource properties. Creation of the add-on might fail
           if conflicts are detected. This option works differently during the update
           operation. For more information, see UpdateAddon (https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html).

        If you don't currently have the self-managed version of the add-on installed
        on your cluster, the Amazon EKS add-on is installed. Amazon EKS sets all
        values to default values, regardless of the option that you specify.
    serviceAccountRoleARN : str, optional
        The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's
        service account. The role must be assigned the IAM permissions required by
        the add-on. If you don't specify an existing IAM role, then the add-on uses
        the permissions assigned to the node IAM role. For more information, see
        Amazon EKS node IAM role (https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html)
        in the Amazon EKS User Guide.

        To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC)
        provider created for your cluster. For more information, see Enabling IAM
        roles for service accounts on your cluster (https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html)
        in the Amazon EKS User Guide.
    tags : {str:str}, optional
        The metadata to apply to the cluster to assist with categorization and organization.
        Each tag consists of a key and an optional value. You define both.
    """
    addonName : str
    addonVersion? : str
    clusterName? : str
    clusterNameRef? : AddonspecforproviderClusternameref
    clusterNameSelector? : AddonspecforproviderClusternameselector
    configurationValues? : str
    region : str
    resolveConflicts? : str
    serviceAccountRoleARN? : str
    tags? : {str:str}

schema AddonspecforproviderClusternameref:
    """
    ClusterNameRef is a reference to a Cluster used to set
    the ClusterName.

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
    ClusterNameSelector selects references to a Cluster used
    to set the ClusterName.

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

schema AddonspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : AddonspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : AddonspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : AddonspecpublishconnectiondetailstoConfigref
    metadata? : AddonspecpublishconnectiondetailstoMetadata
    name : str

schema AddonspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : AddonspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : AddonspecpublishconnectiondetailstoconfigrefPolicy

schema AddonspecpublishconnectiondetailstoconfigrefPolicy:
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

schema AddonspecpublishconnectiondetailstoMetadata:
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

schema AddonspecWriteconnectionsecrettoref:
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

schema AddonStatus:
    """
    AddonStatus defines the observed state of Addon.

    Attributes
    ----------
    atProvider : AddonstatusAtprovider, optional
        AddonObservation defines the observed state of Addon
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
    AddonObservation defines the observed state of Addon

    Attributes
    ----------
    addonARN : str, optional
        The Amazon Resource Name (ARN) of the add-on.
    clusterName : str, optional
        The name of the cluster.
    createdAt : str, optional
        The date and time that the add-on was created.
    health : AddonstatusatproviderHealth, optional
        An object that represents the health of the add-on.
    marketplaceInformation : AddonstatusatproviderMarketplaceinformation, optional
        Information about an Amazon EKS add-on from the Amazon Web Services Marketplace.
    modifiedAt : str, optional
        The date and time that the add-on was last modified.
    owner : str, optional
        The owner of the add-on.
    publisher : str, optional
        The publisher of the add-on.
    status : str, optional
        The status of the add-on.
    """
    addonARN? : str
    clusterName? : str
    createdAt? : str
    health? : AddonstatusatproviderHealth
    marketplaceInformation? : AddonstatusatproviderMarketplaceinformation
    modifiedAt? : str
    owner? : str
    publisher? : str
    status? : str

schema AddonstatusatproviderHealth:
    """
    An object that represents the health of the add-on.

    Attributes
    ----------
    issues : [AddonstatusatproviderhealthIssuesitem], optional
        No description available.
    """
    issues? : [AddonstatusatproviderhealthIssuesitem]

schema AddonstatusatproviderhealthIssuesitem:
    """
    AddonstatusatproviderhealthIssuesitem schema.

    Attributes
    ----------
    code : str, optional
        No description available.
    message : str, optional
        No description available.
    resourceIDs : [str], optional
        No description available.
    """
    code? : str
    message? : str
    resourceIDs? : [str]

schema AddonstatusatproviderMarketplaceinformation:
    """
    Information about an Amazon EKS add-on from the Amazon Web Services Marketplace.

    Attributes
    ----------
    productID : str, optional
        No description available.
    productURL : str, optional
        No description available.
    """
    productID? : str
    productURL? : str

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
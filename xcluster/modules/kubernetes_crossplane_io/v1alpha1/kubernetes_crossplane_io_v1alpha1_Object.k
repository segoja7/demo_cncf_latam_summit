"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Object:
    """
    A Object is an provider Kubernetes API type
    Deprecated: v1alpha1.Object is deprecated in favor of v1alpha2.Object

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
    spec : ObjectSpec, required
        A ObjectSpec defines the desired state of a Object.
    status : ObjectStatus, optional
        A ObjectStatus represents the observed state of a Object.
    """
    apiVersion : str = "kubernetes.crossplane.io/v1alpha1"
    kind : str = "Object"
    metadata? : any
    spec : ObjectSpec
    status? : ObjectStatus

schema ObjectSpec:
    """
    A ObjectSpec defines the desired state of a Object.

    Attributes
    ----------
    connectionDetails : [ObjectspecConnectiondetailsitem], optional
        No description available.
    deletionPolicy : "Orphan" | "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external
        when this managed resource is deleted - either "Delete" or "Orphan" the
        external resource.
        This field is planned to be deprecated in favor of the ManagementPolicy
        field in a future release. Currently, both could be set independently and
        non-default values would be honored if the feature flag is enabled.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : ObjectspecForprovider, required
        ObjectParameters are the configurable fields of a Object.
    managementPolicy : "Default" | "ObserveCreateUpdate" | "ObserveDelete" | "Observe", optional
        A ManagementPolicy determines what should happen to the underlying external
        resource when a managed resource is created, updated, deleted, or observed.
    providerConfigRef : ObjectspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    providerRef : ObjectspecProviderref, optional
        ProviderReference specifies the provider that will be used to create,
        observe, update, and delete this managed resource.
        Deprecated: Please use ProviderConfigReference, i.e. `providerConfigRef`
    readiness : ObjectspecReadiness, optional
        Readiness defines how the object's readiness condition should be computed,
        if not specified it will be considered ready as soon as the underlying external
        resource is considered up-to-date.
    references : [ObjectspecReferencesitem], optional
        No description available.
    watch : bool, optional
        Watch enables watching the referenced or managed kubernetes resources.

        THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
        unless "watches" feature gate is enabled, and may be changed or removed
        without notice.
    writeConnectionSecretToRef : ObjectspecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
        This field is planned to be replaced in a future release in favor of
        PublishConnectionDetailsTo. Currently, both could be set independently
        and connection details would be published to both without affecting
        each other.
    """
    connectionDetails? : [ObjectspecConnectiondetailsitem]
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : ObjectspecForprovider
    managementPolicy? : "Default" | "ObserveCreateUpdate" | "ObserveDelete" | "Observe"
    providerConfigRef? : ObjectspecProviderconfigref
    providerRef? : ObjectspecProviderref
    readiness? : ObjectspecReadiness
    references? : [ObjectspecReferencesitem]
    watch? : bool
    writeConnectionSecretToRef? : ObjectspecWriteconnectionsecrettoref

schema ObjectspecConnectiondetailsitem:
    """
    ConnectionDetail represents an entry in the connection secret for an Object

    Attributes
    ----------
    apiVersion : str, optional
        API version of the referent.
    fieldPath : str, optional
        If referring to a piece of an object instead of an entire object, this string
        should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2].
        For example, if the object reference is to a container within a pod, this would take on a value like:
        "spec.containers{name}" (where "name" refers to the name of the container that triggered
        the event) or if no container name is specified "spec.containers[2]" (container with
        index 2 in this pod). This syntax is chosen only to have some well-defined way of
        referencing a part of an object.
    kind : str, optional
        Kind of the referent.
        More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    name : str, optional
        Name of the referent.
        More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    namespace : str, optional
        Namespace of the referent.
        More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
    resourceVersion : str, optional
        Specific resourceVersion to which this reference is made, if any.
        More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    toConnectionSecretKey : str, optional
        No description available.
    uid : str, optional
        UID of the referent.
        More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
    """
    apiVersion? : str
    fieldPath? : str
    kind? : str
    name? : str
    namespace? : str
    resourceVersion? : str
    toConnectionSecretKey? : str
    uid? : str

schema ObjectspecForprovider:
    """
    ObjectParameters are the configurable fields of a Object.

    Attributes
    ----------
    manifest : any, required
        Raw JSON representation of the kubernetes object to be created.
    """
    manifest : any

schema ObjectspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ObjectspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ObjectspecproviderconfigrefPolicy

schema ObjectspecproviderconfigrefPolicy:
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

schema ObjectspecProviderref:
    """
    ProviderReference specifies the provider that will be used to create,
    observe, update, and delete this managed resource.
    Deprecated: Please use ProviderConfigReference, i.e. `providerConfigRef`

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ObjectspecproviderrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ObjectspecproviderrefPolicy

schema ObjectspecproviderrefPolicy:
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

schema ObjectspecReadiness:
    """
    Readiness defines how the object's readiness condition should be computed,
    if not specified it will be considered ready as soon as the underlying external
    resource is considered up-to-date.

    Attributes
    ----------
    policy : "SuccessfulCreate" | "DeriveFromObject" | "AllTrue", optional
        Policy defines how the Object's readiness condition should be computed.
    """
    policy? : "SuccessfulCreate" | "DeriveFromObject" | "AllTrue"

schema ObjectspecReferencesitem:
    """
    Reference refers to an Object or arbitrary Kubernetes resource and optionally
    patch values from that resource to the current Object.

    Attributes
    ----------
    dependsOn : ObjectspecreferencesitemDependson, optional
        DependsOn is used to declare dependency on other Object or arbitrary
        Kubernetes resource.
    patchesFrom : ObjectspecreferencesitemPatchesfrom, optional
        PatchesFrom is used to declare dependency on other Object or arbitrary
        Kubernetes resource, and also patch fields from this object.
    toFieldPath : str, optional
        ToFieldPath is the path of the field on the resource whose value will
        be changed with the result of transforms. Leave empty if you'd like to
        propagate to the same path as patchesFrom.fieldPath.
    """
    dependsOn? : ObjectspecreferencesitemDependson
    patchesFrom? : ObjectspecreferencesitemPatchesfrom
    toFieldPath? : str

schema ObjectspecreferencesitemDependson:
    """
    DependsOn is used to declare dependency on other Object or arbitrary
    Kubernetes resource.

    Attributes
    ----------
    apiVersion : str, optional
        APIVersion of the referenced object.
    kind : str, optional
        Kind of the referenced object.
    name : str, required
        Name of the referenced object.
    namespace : str, optional
        Namespace of the referenced object.
    """
    apiVersion? : str
    kind? : str
    name : str
    namespace? : str

schema ObjectspecreferencesitemPatchesfrom:
    """
    PatchesFrom is used to declare dependency on other Object or arbitrary
    Kubernetes resource, and also patch fields from this object.

    Attributes
    ----------
    apiVersion : str, optional
        APIVersion of the referenced object.
    fieldPath : str, required
        FieldPath is the path of the field on the resource whose value is to be
        used as input.
    kind : str, optional
        Kind of the referenced object.
    name : str, required
        Name of the referenced object.
    namespace : str, optional
        Namespace of the referenced object.
    """
    apiVersion? : str
    fieldPath : str
    kind? : str
    name : str
    namespace? : str

schema ObjectspecWriteconnectionsecrettoref:
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

schema ObjectStatus:
    """
    A ObjectStatus represents the observed state of a Object.

    Attributes
    ----------
    atProvider : ObjectstatusAtprovider, optional
        ObjectObservation are the observable fields of a Object.
    conditions : [ObjectstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : ObjectstatusAtprovider
    conditions? : [ObjectstatusConditionsitem]
    observedGeneration? : int

schema ObjectstatusAtprovider:
    """
    ObjectObservation are the observable fields of a Object.

    Attributes
    ----------
    manifest : any, optional
        Raw JSON representation of the remote object.
    """
    manifest? : any

schema ObjectstatusConditionsitem:
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
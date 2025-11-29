"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Release:
    """
    A Release is an example API type

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
    spec : ReleaseSpec, required
        A ReleaseSpec defines the desired state of a Release.
    status : ReleaseStatus, optional
        A ReleaseStatus represents the observed state of a Release.
    """
    apiVersion : str = "helm.crossplane.io/v1alpha1"
    kind : str = "Release"
    metadata? : any
    spec : ReleaseSpec
    status? : ReleaseStatus

schema ReleaseSpec:
    """
    A ReleaseSpec defines the desired state of a Release.

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
    forProvider : ReleasespecForprovider, required
        ReleaseParameters are the configurable fields of a Release.
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
    providerConfigRef : ReleasespecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    rollbackLimit : int, optional
        RollbackRetriesLimit is max number of attempts to retry Helm deployment by rolling back the release.
    writeConnectionSecretToRef : ReleasespecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    """
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : ReleasespecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : ReleasespecProviderconfigref
    rollbackLimit? : int
    writeConnectionSecretToRef? : ReleasespecWriteconnectionsecrettoref

schema ReleasespecForprovider:
    """
    ReleaseParameters are the configurable fields of a Release.

    Attributes
    ----------
    chart : ReleasespecforproviderChart, required
        A ChartSpec defines the chart spec for a Release
    namespace : str, required
        No description available.
    patchesFrom : [ReleasespecforproviderPatchesfromitem], optional
        No description available.
    set : [ReleasespecforproviderSetitem], optional
        No description available.
    values : any, optional
        No description available.
    valuesFrom : [ReleasespecforproviderValuesfromitem], optional
        No description available.
    wait : bool, optional
        No description available.
    """
    chart : ReleasespecforproviderChart
    namespace : str
    patchesFrom? : [ReleasespecforproviderPatchesfromitem]
    set? : [ReleasespecforproviderSetitem]
    values? : any
    valuesFrom? : [ReleasespecforproviderValuesfromitem]
    wait? : bool

schema ReleasespecforproviderChart:
    """
    A ChartSpec defines the chart spec for a Release

    Attributes
    ----------
    name : str, required
        No description available.
    pullSecretRef : ReleasespecforproviderchartPullsecretref, optional
        A SecretReference is a reference to a secret in an arbitrary namespace.
    repository : str, required
        No description available.
    version : str, required
        No description available.
    """
    name : str
    pullSecretRef? : ReleasespecforproviderchartPullsecretref
    repository : str
    version : str

schema ReleasespecforproviderchartPullsecretref:
    """
    A SecretReference is a reference to a secret in an arbitrary namespace.

    Attributes
    ----------
    name : str, required
        Name of the secret.
    namespace : str, required
        Namespace of the secret.
    """
    name : str
    namespace : str

schema ReleasespecforproviderPatchesfromitem:
    """
    ValueFromSource represents source of a value

    Attributes
    ----------
    configMapKeyRef : ReleasespecforproviderpatchesfromitemConfigmapkeyref, optional
        DataKeySelector defines required spec to access a key of a configmap or secret
    secretKeyRef : ReleasespecforproviderpatchesfromitemSecretkeyref, optional
        DataKeySelector defines required spec to access a key of a configmap or secret
    """
    configMapKeyRef? : ReleasespecforproviderpatchesfromitemConfigmapkeyref
    secretKeyRef? : ReleasespecforproviderpatchesfromitemSecretkeyref

schema ReleasespecforproviderpatchesfromitemConfigmapkeyref:
    """
    DataKeySelector defines required spec to access a key of a configmap or secret

    Attributes
    ----------
    key : str, optional
        No description available.
    name : str, required
        No description available.
    namespace : str, required
        No description available.
    optional : bool, optional
        No description available.
    """
    key? : str
    name : str
    namespace : str
    optional? : bool

schema ReleasespecforproviderpatchesfromitemSecretkeyref:
    """
    DataKeySelector defines required spec to access a key of a configmap or secret

    Attributes
    ----------
    key : str, optional
        No description available.
    name : str, required
        No description available.
    namespace : str, required
        No description available.
    optional : bool, optional
        No description available.
    """
    key? : str
    name : str
    namespace : str
    optional? : bool

schema ReleasespecforproviderSetitem:
    """
    SetVal represents a "set" value override in a Release

    Attributes
    ----------
    name : str, required
        No description available.
    value : str, optional
        No description available.
    valueFrom : ReleasespecforprovidersetitemValuefrom, optional
        ValueFromSource represents source of a value
    """
    name : str
    value? : str
    valueFrom? : ReleasespecforprovidersetitemValuefrom

schema ReleasespecforprovidersetitemValuefrom:
    """
    ValueFromSource represents source of a value

    Attributes
    ----------
    configMapKeyRef : ReleasespecforprovidersetitemvaluefromConfigmapkeyref, optional
        DataKeySelector defines required spec to access a key of a configmap or secret
    secretKeyRef : ReleasespecforprovidersetitemvaluefromSecretkeyref, optional
        DataKeySelector defines required spec to access a key of a configmap or secret
    """
    configMapKeyRef? : ReleasespecforprovidersetitemvaluefromConfigmapkeyref
    secretKeyRef? : ReleasespecforprovidersetitemvaluefromSecretkeyref

schema ReleasespecforprovidersetitemvaluefromConfigmapkeyref:
    """
    DataKeySelector defines required spec to access a key of a configmap or secret

    Attributes
    ----------
    key : str, optional
        No description available.
    name : str, required
        No description available.
    namespace : str, required
        No description available.
    optional : bool, optional
        No description available.
    """
    key? : str
    name : str
    namespace : str
    optional? : bool

schema ReleasespecforprovidersetitemvaluefromSecretkeyref:
    """
    DataKeySelector defines required spec to access a key of a configmap or secret

    Attributes
    ----------
    key : str, optional
        No description available.
    name : str, required
        No description available.
    namespace : str, required
        No description available.
    optional : bool, optional
        No description available.
    """
    key? : str
    name : str
    namespace : str
    optional? : bool

schema ReleasespecforproviderValuesfromitem:
    """
    ValueFromSource represents source of a value

    Attributes
    ----------
    configMapKeyRef : ReleasespecforprovidervaluesfromitemConfigmapkeyref, optional
        DataKeySelector defines required spec to access a key of a configmap or secret
    secretKeyRef : ReleasespecforprovidervaluesfromitemSecretkeyref, optional
        DataKeySelector defines required spec to access a key of a configmap or secret
    """
    configMapKeyRef? : ReleasespecforprovidervaluesfromitemConfigmapkeyref
    secretKeyRef? : ReleasespecforprovidervaluesfromitemSecretkeyref

schema ReleasespecforprovidervaluesfromitemConfigmapkeyref:
    """
    DataKeySelector defines required spec to access a key of a configmap or secret

    Attributes
    ----------
    key : str, optional
        No description available.
    name : str, required
        No description available.
    namespace : str, required
        No description available.
    optional : bool, optional
        No description available.
    """
    key? : str
    name : str
    namespace : str
    optional? : bool

schema ReleasespecforprovidervaluesfromitemSecretkeyref:
    """
    DataKeySelector defines required spec to access a key of a configmap or secret

    Attributes
    ----------
    key : str, optional
        No description available.
    name : str, required
        No description available.
    namespace : str, required
        No description available.
    optional : bool, optional
        No description available.
    """
    key? : str
    name : str
    namespace : str
    optional? : bool

schema ReleasespecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ReleasespecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ReleasespecproviderconfigrefPolicy

schema ReleasespecproviderconfigrefPolicy:
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

schema ReleasespecWriteconnectionsecrettoref:
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

schema ReleaseStatus:
    """
    A ReleaseStatus represents the observed state of a Release.

    Attributes
    ----------
    atProvider : ReleasestatusAtprovider, optional
        ReleaseObservation are the observable fields of a Release.
    conditions : [ReleasestatusConditionsitem], optional
        Conditions of the resource.
    failed : int, optional
        No description available.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    patchesSha : str, optional
        No description available.
    synced : bool, optional
        No description available.
    """
    atProvider? : ReleasestatusAtprovider
    conditions? : [ReleasestatusConditionsitem]
    failed? : int
    observedGeneration? : int
    patchesSha? : str
    synced? : bool

schema ReleasestatusAtprovider:
    """
    ReleaseObservation are the observable fields of a Release.

    Attributes
    ----------
    releaseDescription : str, optional
        No description available.
    revision : int, optional
        No description available.
    state : str, optional
        Status is the status of a release
    """
    releaseDescription? : str
    revision? : int
    state? : str

schema ReleasestatusConditionsitem:
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
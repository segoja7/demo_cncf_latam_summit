"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Openidconnectprovider:
    """
    OpenIDConnectProvider is the Schema for the OpenIDConnectProviders API

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
    spec : OpenidconnectproviderSpec, required
        OpenIDConnectProviderSpec defines the desired state of OpenIDConnectProvider
    status : OpenidconnectproviderStatus, optional
        OpenIDConnectProviderStatus defines the observed state of OpenIDConnectProvider.
    """
    apiVersion : str = "iam.aws.crossplane.io/v1beta1"
    kind : str = "OpenIDConnectProvider"
    metadata? : any
    spec : OpenidconnectproviderSpec
    status? : OpenidconnectproviderStatus

schema OpenidconnectproviderSpec:
    """
    OpenIDConnectProviderSpec defines the desired state of OpenIDConnectProvider

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
    forProvider : OpenidconnectproviderspecForprovider, required
        OpenIDConnectProviderParameters defines the desired state of OpenIDConnectProvider
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
    providerConfigRef : OpenidconnectproviderspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : OpenidconnectproviderspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : OpenidconnectproviderspecWriteconnectionsecrettoref, optional
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
    forProvider : OpenidconnectproviderspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : OpenidconnectproviderspecProviderconfigref
    publishConnectionDetailsTo? : OpenidconnectproviderspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : OpenidconnectproviderspecWriteconnectionsecrettoref

schema OpenidconnectproviderspecForprovider:
    """
    OpenIDConnectProviderParameters defines the desired state of OpenIDConnectProvider

    Attributes
    ----------
    clientIDList : [str], optional
        A list of client IDs (also known as audiences). When a mobile or web app
        registers with an OpenID Connect provider, they establish a value that identifies
        the application. (This is the value that's sent as the client_id parameter
        on OAuth requests.)

        You can register multiple client IDs with the same provider. For example,
        you might have multiple applications that use the same OIDC provider. You
        cannot register more than 100 client IDs with a single IAM OIDC provider.

        There is no defined format for a client ID. The CreateOpenIDConnectProviderRequest
        operation accepts client IDs up to 255 characters long.
    tags : [OpenidconnectproviderspecforproviderTagsitem], optional
        Tags. For more information about
        tagging, see Tagging OpenID Connect (OIDC) identity providers (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags_idps_oidc.html)
        in the IAM User Guide.
    thumbprintList : [str], required
        A list of server certificate thumbprints for the OpenID Connect (OIDC) identity
        provider's server certificates. Typically this list includes only one entry.
        However, IAM lets you have up to five thumbprints for an OIDC provider. This
        lets you maintain multiple thumbprints if the identity provider is rotating
        certificates.

        The server certificate thumbprint is the hex-encoded SHA-1 hash value of
        the X.509 certificate used by the domain where the OpenID Connect provider
        makes its keys available. It is always a 40-character string.

        You must provide at least one thumbprint when creating an IAM OIDC provider.
        For example, assume that the OIDC provider is server.example.com and the
        provider stores its keys at https://keys.server.example.com/openid-connect.
        In that case, the thumbprint string would be the hex-encoded SHA-1 hash value
        of the certificate used by https://keys.server.example.com.

        For more information about obtaining the OIDC provider's thumbprint, see
        Obtaining the Thumbprint for an OpenID Connect Provider (https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html)
        in the IAM User Guide.
    url : str, required
        The URL of the identity provider. The URL must begin with https:// and should
        correspond to the iss claim in the provider's OpenID Connect ID tokens. Per
        the OIDC standard, path components are allowed but query parameters are not.
        Typically the URL consists of only a hostname, like https://server.example.org
        or https://example.com.

        You cannot register the same provider multiple times in a single AWS account.
        If you try to submit a URL that has already been used for an OpenID Connect
        provider in the AWS account, you will get an error.
    """
    clientIDList? : [str]
    tags? : [OpenidconnectproviderspecforproviderTagsitem]
    thumbprintList : [str]
    url : str

schema OpenidconnectproviderspecforproviderTagsitem:
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

schema OpenidconnectproviderspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : OpenidconnectproviderspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : OpenidconnectproviderspecproviderconfigrefPolicy

schema OpenidconnectproviderspecproviderconfigrefPolicy:
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

schema OpenidconnectproviderspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : OpenidconnectproviderspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : OpenidconnectproviderspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : OpenidconnectproviderspecpublishconnectiondetailstoConfigref
    metadata? : OpenidconnectproviderspecpublishconnectiondetailstoMetadata
    name : str

schema OpenidconnectproviderspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : OpenidconnectproviderspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : OpenidconnectproviderspecpublishconnectiondetailstoconfigrefPolicy

schema OpenidconnectproviderspecpublishconnectiondetailstoconfigrefPolicy:
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

schema OpenidconnectproviderspecpublishconnectiondetailstoMetadata:
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

schema OpenidconnectproviderspecWriteconnectionsecrettoref:
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

schema OpenidconnectproviderStatus:
    """
    OpenIDConnectProviderStatus defines the observed state of OpenIDConnectProvider.

    Attributes
    ----------
    atProvider : OpenidconnectproviderstatusAtprovider, optional
        OpenIDConnectProviderObservation defines the observed state of OpenIDConnectProvider
    conditions : [OpenidconnectproviderstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : OpenidconnectproviderstatusAtprovider
    conditions? : [OpenidconnectproviderstatusConditionsitem]
    observedGeneration? : int

schema OpenidconnectproviderstatusAtprovider:
    """
    OpenIDConnectProviderObservation defines the observed state of OpenIDConnectProvider

    Attributes
    ----------
    createDate : str, optional
        The date and time when the IAM OIDC provider resource object was created
        in the AWS account.
    """
    createDate? : str

schema OpenidconnectproviderstatusConditionsitem:
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
"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Providerconfig:
    """
    A ProviderConfig configures a Helm 'provider', i.e. a connection to a particular

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
    spec : ProviderconfigSpec, required
        A ProviderConfigSpec defines the desired state of a Provider.
    status : ProviderconfigStatus, optional
        A ProviderConfigStatus defines the status of a Provider.
    """
    apiVersion : str = "helm.crossplane.io/v1alpha1"
    kind : str = "ProviderConfig"
    metadata? : any
    spec : ProviderconfigSpec
    status? : ProviderconfigStatus

schema ProviderconfigSpec:
    """
    A ProviderConfigSpec defines the desired state of a Provider.

    Attributes
    ----------
    credentials : ProviderconfigspecCredentials, required
        Credentials used to connect to the Kubernetes API. Typically a
        kubeconfig file. Use InjectedIdentity for in-cluster config.
    identity : ProviderconfigspecIdentity, optional
        Identity used to authenticate to the Kubernetes API. The identity
        credentials can be used to supplement kubeconfig 'credentials', for
        example by configuring a bearer token source such as OAuth.
    """
    credentials : ProviderconfigspecCredentials
    identity? : ProviderconfigspecIdentity

schema ProviderconfigspecCredentials:
    """
    Credentials used to connect to the Kubernetes API. Typically a
    kubeconfig file. Use InjectedIdentity for in-cluster config.

    Attributes
    ----------
    env : ProviderconfigspeccredentialsEnv, optional
        Env is a reference to an environment variable that contains credentials
        that must be used to connect to the provider.
    fs : ProviderconfigspeccredentialsFs, optional
        Fs is a reference to a filesystem location that contains credentials that
        must be used to connect to the provider.
    secretRef : ProviderconfigspeccredentialsSecretref, optional
        A SecretRef is a reference to a secret key that contains the credentials
        that must be used to connect to the provider.
    source : "None" | "Secret" | "InjectedIdentity" | "Environment" | "Filesystem", required
        Source of the provider credentials.
    """
    env? : ProviderconfigspeccredentialsEnv
    fs? : ProviderconfigspeccredentialsFs
    secretRef? : ProviderconfigspeccredentialsSecretref
    source : "None" | "Secret" | "InjectedIdentity" | "Environment" | "Filesystem"

schema ProviderconfigspeccredentialsEnv:
    """
    Env is a reference to an environment variable that contains credentials
    that must be used to connect to the provider.

    Attributes
    ----------
    name : str, required
        Name is the name of an environment variable.
    """
    name : str

schema ProviderconfigspeccredentialsFs:
    """
    Fs is a reference to a filesystem location that contains credentials that
    must be used to connect to the provider.

    Attributes
    ----------
    path : str, required
        Path is a filesystem path.
    """
    path : str

schema ProviderconfigspeccredentialsSecretref:
    """
    A SecretRef is a reference to a secret key that contains the credentials
    that must be used to connect to the provider.

    Attributes
    ----------
    key : str, required
        The key to select.
    name : str, required
        Name of the secret.
    namespace : str, required
        Namespace of the secret.
    """
    key : str
    name : str
    namespace : str

schema ProviderconfigspecIdentity:
    """
    Identity used to authenticate to the Kubernetes API. The identity
    credentials can be used to supplement kubeconfig 'credentials', for
    example by configuring a bearer token source such as OAuth.

    Attributes
    ----------
    env : ProviderconfigspecidentityEnv, optional
        Env is a reference to an environment variable that contains credentials
        that must be used to connect to the provider.
    fs : ProviderconfigspecidentityFs, optional
        Fs is a reference to a filesystem location that contains credentials that
        must be used to connect to the provider.
    secretRef : ProviderconfigspecidentitySecretref, optional
        A SecretRef is a reference to a secret key that contains the credentials
        that must be used to connect to the provider.
    source : "None" | "Secret" | "InjectedIdentity" | "Environment" | "Filesystem", required
        Source of the provider credentials.
    type : "GoogleApplicationCredentials", required
        Type of identity.
    """
    env? : ProviderconfigspecidentityEnv
    fs? : ProviderconfigspecidentityFs
    secretRef? : ProviderconfigspecidentitySecretref
    source : "None" | "Secret" | "InjectedIdentity" | "Environment" | "Filesystem"
    type : "GoogleApplicationCredentials"

schema ProviderconfigspecidentityEnv:
    """
    Env is a reference to an environment variable that contains credentials
    that must be used to connect to the provider.

    Attributes
    ----------
    name : str, required
        Name is the name of an environment variable.
    """
    name : str

schema ProviderconfigspecidentityFs:
    """
    Fs is a reference to a filesystem location that contains credentials that
    must be used to connect to the provider.

    Attributes
    ----------
    path : str, required
        Path is a filesystem path.
    """
    path : str

schema ProviderconfigspecidentitySecretref:
    """
    A SecretRef is a reference to a secret key that contains the credentials
    that must be used to connect to the provider.

    Attributes
    ----------
    key : str, required
        The key to select.
    name : str, required
        Name of the secret.
    namespace : str, required
        Namespace of the secret.
    """
    key : str
    name : str
    namespace : str

schema ProviderconfigStatus:
    """
    A ProviderConfigStatus defines the status of a Provider.

    Attributes
    ----------
    conditions : [ProviderconfigstatusConditionsitem], optional
        Conditions of the resource.
    users : int, optional
        Users of this provider configuration.
    """
    conditions? : [ProviderconfigstatusConditionsitem]
    users? : int

schema ProviderconfigstatusConditionsitem:
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
"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Cluster:
    """
    A Cluster is a managed resource that represents an AWS Elastic Kubernetes
    Service cluster.

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
    spec : ClusterSpec, required
        A ClusterSpec defines the desired state of an EKS Cluster.
    status : ClusterStatus, optional
        A ClusterStatus represents the observed state of an EKS Cluster.
    """
    apiVersion : str = "eks.aws.crossplane.io/v1beta1"
    kind : str = "Cluster"
    metadata? : any
    spec : ClusterSpec
    status? : ClusterStatus

schema ClusterSpec:
    """
    A ClusterSpec defines the desired state of an EKS Cluster.

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
    forProvider : ClusterspecForprovider, required
        ClusterParameters define the desired state of an AWS Elastic Kubernetes
        Service cluster.
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
    providerConfigRef : ClusterspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : ClusterspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : ClusterspecWriteconnectionsecrettoref, optional
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
    forProvider : ClusterspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : ClusterspecProviderconfigref
    publishConnectionDetailsTo? : ClusterspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : ClusterspecWriteconnectionsecrettoref

schema ClusterspecForprovider:
    """
    ClusterParameters define the desired state of an AWS Elastic Kubernetes
    Service cluster.

    Attributes
    ----------
    accessConfig : ClusterspecforproviderAccessconfig, optional
        The access configuration for the cluster.
    encryptionConfig : [ClusterspecforproviderEncryptionconfigitem], optional
        The encryption configuration for the cluster.
    kubernetesNetworkConfig : ClusterspecforproviderKubernetesnetworkconfig, optional
        The Kubernetes network configuration for the cluster.
    logging : ClusterspecforproviderLogging, optional
        Enable or disable exporting the Kubernetes control plane logs for your cluster
        to CloudWatch Logs. By default, cluster control plane logs aren't exported
        to CloudWatch Logs. For more information, see Amazon EKS Cluster Control
        Plane Logs (https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
        in the Amazon EKS User Guide .

        CloudWatch Logs ingestion, archive storage, and data scanning rates apply
        to exported control plane logs. For more information, see Amazon CloudWatch
        Pricing (http://aws.amazon.com/cloudwatch/pricing/).
    outpostConfig : ClusterspecforproviderOutpostconfig, optional
        An object representing the configuration of your local Amazon EKS cluster on an
        Amazon Web Services Outpost. Before creating a local cluster on an Outpost,
        review Creating an Amazon EKS cluster on an Amazon Web Services Outpost
        (https://docs.aws.amazon.com/eks/latest/userguide/create-cluster-outpost.html)
        in the Amazon EKS User Guide. This object isn't available for creating Amazon
        EKS clusters on the Amazon Web Services cloud.
    region : str, optional
        Region is the region you'd like your Cluster to be created in.
    resourcesVpcConfig : ClusterspecforproviderResourcesvpcconfig, required
        The VPC configuration used by the cluster control plane. Amazon EKS VPC resources
        have specific requirements to work properly with Kubernetes. For more information,
        see Cluster VPC Considerations (https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
        and Cluster Security Group Considerations (https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
        in the Amazon EKS User Guide. You must specify at least two subnets. You
        can specify up to five security groups, but we recommend that you use a dedicated
        security group for your cluster control plane.

        ResourcesVpcConfig is a required field
    roleArn : str, optional
        The Amazon Resource Name (ARN) of the IAM role that provides permissions
        for Amazon EKS to make calls to other AWS API operations on your behalf.
        For more information, see Amazon EKS Service IAM Role (https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html)
        in the Amazon EKS User Guide .

        RoleArn is a required field
    roleArnRef : ClusterspecforproviderRolearnref, optional
        RoleArnRef is a reference to an IAMRole used to set
        the RoleArn.
    roleArnSelector : ClusterspecforproviderRolearnselector, optional
        RoleArnSelector selects references to IAMRole used
        to set the RoleArn.
    tags : {str:str}, optional
        The metadata to apply to the cluster to assist with categorization and organization.
        Each tag consists of a key and an optional value, both of which you define.
    version : str, optional
        The desired Kubernetes version for your cluster. If you don't specify a value
        here, the latest version available in Amazon EKS is used.
        Example: 1.15
    """
    accessConfig? : ClusterspecforproviderAccessconfig
    encryptionConfig? : [ClusterspecforproviderEncryptionconfigitem]
    kubernetesNetworkConfig? : ClusterspecforproviderKubernetesnetworkconfig
    logging? : ClusterspecforproviderLogging
    outpostConfig? : ClusterspecforproviderOutpostconfig
    region? : str
    resourcesVpcConfig : ClusterspecforproviderResourcesvpcconfig
    roleArn? : str
    roleArnRef? : ClusterspecforproviderRolearnref
    roleArnSelector? : ClusterspecforproviderRolearnselector
    tags? : {str:str}
    version? : str

schema ClusterspecforproviderAccessconfig:
    """
    The access configuration for the cluster.

    Attributes
    ----------
    authenticationMode : "API" | "API_AND_CONFIG_MAP" | "CONFIG_MAP", optional
        The desired authentication mode for the cluster.
    """
    authenticationMode? : "API" | "API_AND_CONFIG_MAP" | "CONFIG_MAP"

schema ClusterspecforproviderEncryptionconfigitem:
    """
    EncryptionConfig is the encryption configuration for a cluster.

    Attributes
    ----------
    provider : ClusterspecforproviderencryptionconfigitemProvider, required
        AWS Key Management Service (AWS KMS) customer master key (CMK). Either the
        ARN or the alias can be used.
    resources : [str], required
        Specifies the resources to be encrypted. The only supported value is "secrets".
    """
    provider : ClusterspecforproviderencryptionconfigitemProvider
    resources : [str]

schema ClusterspecforproviderencryptionconfigitemProvider:
    """
    AWS Key Management Service (AWS KMS) customer master key (CMK). Either the
    ARN or the alias can be used.

    Attributes
    ----------
    keyArn : str, required
        Amazon Resource Name (ARN) or alias of the customer master key (CMK). The
        CMK must be symmetric, created in the same region as the cluster, and if
        the CMK was created in a different account, the user must have access to
        the CMK. For more information, see Allowing Users in Other Accounts to Use
        a CMK (https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html)
        in the AWS Key Management Service Developer Guide.
    """
    keyArn : str

schema ClusterspecforproviderKubernetesnetworkconfig:
    """
    The Kubernetes network configuration for the cluster.

    Attributes
    ----------
    ipFamily : str, required
        Specify which IP family is used to assign Kubernetes pod and service IP
        addresses. If you don't specify a value, ipv4 is used by default. You can only
        specify an IP family when you create a cluster and can't change this value once
        the cluster is created. If you specify ipv6, the VPC and subnets that you
        specify for cluster creation must have both IPv4 and IPv6 CIDR blocks assigned
        to them. You can't specify ipv6 for clusters in China Regions. You can only
        specify ipv6 for 1.21 and later clusters that use version 1.10.1 or later of the
        Amazon VPC CNI add-on. If you specify ipv6, then ensure that your VPC meets the
        requirements listed in the considerations listed in Assigning IPv6 addresses to
        pods and services
        (https://docs.aws.amazon.com/eks/latest/userguide/cni-ipv6.html) in the Amazon
        EKS User Guide. Kubernetes assigns services IPv6 addresses from the unique local
        address range (fc00::/7). You can't specify a custom IPv6 CIDR block. Pod
        addresses are assigned from the subnet's IPv6 CIDR.
    serviceIpv4Cidr : str, optional
        Don't specify a value if you select ipv6 for ipFamily. The CIDR block to assign
        Kubernetes service IP addresses from. If you don't specify a block, Kubernetes
        assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We
        recommend that you specify a block that does not overlap with resources in other
        networks that are peered or connected to your VPC. The block must meet the
        following requirements:

        * Within one of the following private IP address
        blocks: 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16.

        * Doesn't overlap with
        any CIDR block assigned to the VPC that you selected for VPC.

        * Between /24 and
        /12.

        You can only specify a custom CIDR block when you create a cluster and
        can't change this value once the cluster is created.
    """
    ipFamily : str
    serviceIpv4Cidr? : str

schema ClusterspecforproviderLogging:
    """
    Enable or disable exporting the Kubernetes control plane logs for your cluster
    to CloudWatch Logs. By default, cluster control plane logs aren't exported
    to CloudWatch Logs. For more information, see Amazon EKS Cluster Control
    Plane Logs (https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
    in the Amazon EKS User Guide .

    CloudWatch Logs ingestion, archive storage, and data scanning rates apply
    to exported control plane logs. For more information, see Amazon CloudWatch
    Pricing (http://aws.amazon.com/cloudwatch/pricing/).

    Attributes
    ----------
    clusterLogging : [ClusterspecforproviderloggingClusterloggingitem], required
        The cluster control plane logging configuration for your cluster.
    """
    clusterLogging : [ClusterspecforproviderloggingClusterloggingitem]

schema ClusterspecforproviderloggingClusterloggingitem:
    """
    LogSetup specifies the logging types that are enabled.

    Attributes
    ----------
    enabled : bool, optional
        If a log type is enabled, that log type exports its control plane logs to
        CloudWatch Logs. If a log type isn't enabled, that log type doesn't export
        its control plane logs. Each individual log type can be enabled or disabled
        independently.
    types : [str], optional
        The available cluster control plane log types.
    """
    enabled? : bool
    types? : [str]

schema ClusterspecforproviderOutpostconfig:
    """
    An object representing the configuration of your local Amazon EKS cluster on an
    Amazon Web Services Outpost. Before creating a local cluster on an Outpost,
    review Creating an Amazon EKS cluster on an Amazon Web Services Outpost
    (https://docs.aws.amazon.com/eks/latest/userguide/create-cluster-outpost.html)
    in the Amazon EKS User Guide. This object isn't available for creating Amazon
    EKS clusters on the Amazon Web Services cloud.

    Attributes
    ----------
    controlPlaneInstanceType : str, required
        The Amazon EC2 instance type that you want to use for your local Amazon EKS
        cluster on Outposts. The instance type that you specify is used for all
        Kubernetes control plane instances. The instance type can't be changed after
        cluster creation. Choose an instance type based on the number of nodes that your
        cluster will have. If your cluster will have:

        * 1–20 nodes, then we recommend
        specifying a large instance type.

        * 21–100 nodes, then we recommend specifying
        an xlarge instance type.

        * 101–250 nodes, then we recommend specifying a
        2xlarge instance type.

        For a list of the available Amazon EC2 instance types,
        see Compute and storage in Outposts rack features
        (http://aws.amazon.com/outposts/rack/features/). The control plane is not
        automatically scaled by Amazon EKS.

        This member is required.
    outpostArns : [str], required
        The ARN of the Outpost that you want to use for your local Amazon EKS cluster on
        Outposts. Only a single Outpost ARN is supported.

        This member is required.
    """
    controlPlaneInstanceType : str
    outpostArns : [str]

schema ClusterspecforproviderResourcesvpcconfig:
    """
    The VPC configuration used by the cluster control plane. Amazon EKS VPC resources
    have specific requirements to work properly with Kubernetes. For more information,
    see Cluster VPC Considerations (https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
    and Cluster Security Group Considerations (https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
    in the Amazon EKS User Guide. You must specify at least two subnets. You
    can specify up to five security groups, but we recommend that you use a dedicated
    security group for your cluster control plane.

    ResourcesVpcConfig is a required field

    Attributes
    ----------
    endpointPrivateAccess : bool, optional
        Set this value to true to enable private access for your cluster's Kubernetes
        API server endpoint. If you enable private access, Kubernetes API requests
        from within your cluster's VPC use the private VPC endpoint. The default
        value for this parameter is false, which disables private access for your
        Kubernetes API server. For more information, see Amazon EKS Cluster Endpoint
        Access Control (https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
        in the Amazon EKS User Guide.
    endpointPublicAccess : bool, optional
        Set this value to false to disable public access for your cluster's Kubernetes
        API server endpoint. If you disable public access, your cluster's Kubernetes
        API server can receive only requests from within the cluster VPC. The default
        value for this parameter is true, which enables public access for your Kubernetes
        API server. For more information, see Amazon EKS Cluster Endpoint Access
        Control (https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
        in the Amazon EKS User Guide.
    publicAccessCidrs : [str], optional
        The CIDR blocks that are allowed access to your cluster's public Kubernetes
        API server endpoint. Communication to the endpoint from addresses outside
        of the CIDR blocks that you specify is denied. The default value is 0.0.0.0/0.
        If you've disabled private endpoint access and you have worker nodes or AWS
        Fargate pods in the cluster, then ensure that you specify the necessary CIDR
        blocks. For more information, see Amazon EKS Cluster Endpoint Access Control
        (https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
        in the Amazon EKS User Guide.
    securityGroupIdRefs : [ClusterspecforproviderresourcesvpcconfigSecuritygroupidrefsitem], optional
        SecurityGroupIDRefs are references to SecurityGroups used to set
        the SecurityGroupIDs.
    securityGroupIdSelector : ClusterspecforproviderresourcesvpcconfigSecuritygroupidselector, optional
        SecurityGroupIDSelector selects references to SecurityGroups used
        to set the SecurityGroupIDs.
    securityGroupIds : [str], optional
        Specify one or more security groups for the cross-account elastic network
        interfaces that Amazon EKS creates to use to allow communication between
        your worker nodes and the Kubernetes control plane. If you don't specify
        a security group, the default security group for your VPC is used.
    subnetIdRefs : [ClusterspecforproviderresourcesvpcconfigSubnetidrefsitem], optional
        SubnetIDRefs are references to Subnets used to set
        the SubnetIDs.
    subnetIdSelector : ClusterspecforproviderresourcesvpcconfigSubnetidselector, optional
        SubnetIDSelector selects references to Subnets used
        to set the SubnetIDs.
    subnetIds : [str], optional
        Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates cross-account
        elastic network interfaces in these subnets to allow communication between
        your worker nodes and the Kubernetes control plane.
    """
    endpointPrivateAccess? : bool
    endpointPublicAccess? : bool
    publicAccessCidrs? : [str]
    securityGroupIdRefs? : [ClusterspecforproviderresourcesvpcconfigSecuritygroupidrefsitem]
    securityGroupIdSelector? : ClusterspecforproviderresourcesvpcconfigSecuritygroupidselector
    securityGroupIds? : [str]
    subnetIdRefs? : [ClusterspecforproviderresourcesvpcconfigSubnetidrefsitem]
    subnetIdSelector? : ClusterspecforproviderresourcesvpcconfigSubnetidselector
    subnetIds? : [str]

schema ClusterspecforproviderresourcesvpcconfigSecuritygroupidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecforproviderresourcesvpcconfigsecuritygroupidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecforproviderresourcesvpcconfigsecuritygroupidrefsitemPolicy

schema ClusterspecforproviderresourcesvpcconfigsecuritygroupidrefsitemPolicy:
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

schema ClusterspecforproviderresourcesvpcconfigSecuritygroupidselector:
    """
    SecurityGroupIDSelector selects references to SecurityGroups used
    to set the SecurityGroupIDs.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecforproviderresourcesvpcconfigsecuritygroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecforproviderresourcesvpcconfigsecuritygroupidselectorPolicy

schema ClusterspecforproviderresourcesvpcconfigsecuritygroupidselectorPolicy:
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

schema ClusterspecforproviderresourcesvpcconfigSubnetidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecforproviderresourcesvpcconfigsubnetidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecforproviderresourcesvpcconfigsubnetidrefsitemPolicy

schema ClusterspecforproviderresourcesvpcconfigsubnetidrefsitemPolicy:
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

schema ClusterspecforproviderresourcesvpcconfigSubnetidselector:
    """
    SubnetIDSelector selects references to Subnets used
    to set the SubnetIDs.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecforproviderresourcesvpcconfigsubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecforproviderresourcesvpcconfigsubnetidselectorPolicy

schema ClusterspecforproviderresourcesvpcconfigsubnetidselectorPolicy:
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

schema ClusterspecforproviderRolearnref:
    """
    RoleArnRef is a reference to an IAMRole used to set
    the RoleArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecforproviderrolearnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecforproviderrolearnrefPolicy

schema ClusterspecforproviderrolearnrefPolicy:
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

schema ClusterspecforproviderRolearnselector:
    """
    RoleArnSelector selects references to IAMRole used
    to set the RoleArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : ClusterspecforproviderrolearnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : ClusterspecforproviderrolearnselectorPolicy

schema ClusterspecforproviderrolearnselectorPolicy:
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

schema ClusterspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecproviderconfigrefPolicy

schema ClusterspecproviderconfigrefPolicy:
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

schema ClusterspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : ClusterspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : ClusterspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : ClusterspecpublishconnectiondetailstoConfigref
    metadata? : ClusterspecpublishconnectiondetailstoMetadata
    name : str

schema ClusterspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : ClusterspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : ClusterspecpublishconnectiondetailstoconfigrefPolicy

schema ClusterspecpublishconnectiondetailstoconfigrefPolicy:
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

schema ClusterspecpublishconnectiondetailstoMetadata:
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

schema ClusterspecWriteconnectionsecrettoref:
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

schema ClusterStatus:
    """
    A ClusterStatus represents the observed state of an EKS Cluster.

    Attributes
    ----------
    atProvider : ClusterstatusAtprovider, optional
        ClusterObservation is the observed state of a cluster.
    conditions : [ClusterstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : ClusterstatusAtprovider
    conditions? : [ClusterstatusConditionsitem]
    observedGeneration? : int

schema ClusterstatusAtprovider:
    """
    ClusterObservation is the observed state of a cluster.

    Attributes
    ----------
    accessConfig : ClusterstatusatproviderAccessconfig, optional
        The access configuration for the cluster.
    arn : str, optional
        The Amazon Resource Name (ARN) of the cluster.
    certificateAuthorityData : str, optional
        The Base64-encoded certificate data required to communicate with your cluster.
    createdAt : str, optional
        The Unix epoch timestamp in seconds for when the cluster was created.
    endpoint : str, optional
        The endpoint for your Kubernetes API server.
    identity : ClusterstatusatproviderIdentity, optional
        The identity provider information for the cluster.
    kubernetesNetworkConfig : ClusterstatusatproviderKubernetesnetworkconfig, optional
        The Kubernetes network configuration for the cluster.
    outpostConfig : ClusterstatusatproviderOutpostconfig, optional
        An object representing the configuration of your local Amazon EKS cluster on an
        Amazon Web Services Outpost. This object isn't available for clusters on the
        Amazon Web Services cloud.
    platformVersion : str, optional
        The platform version of your Amazon EKS cluster. For more information, see
        Platform Versions (https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html)
        in the Amazon EKS User Guide .
    resourcesVpcConfig : ClusterstatusatproviderResourcesvpcconfig, optional
        The VPC configuration used by the cluster control plane. Amazon EKS VPC resources
        have specific requirements to work properly with Kubernetes. For more information,
        see Cluster VPC Considerations (https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
        and Cluster Security Group Considerations (https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
        in the Amazon EKS User Guide.
    status : str, optional
        The current status of the cluster.
    version : str, optional
        The kubernetes version of your Amazon EKS cluster. For more information, see
        Kubernetes Versions (https://docs.aws.amazon.com/eks/latest/userguide/kubernetes-versions.html)
        in the Amazon EKS User Guide .
    """
    accessConfig? : ClusterstatusatproviderAccessconfig
    arn? : str
    certificateAuthorityData? : str
    createdAt? : str
    endpoint? : str
    identity? : ClusterstatusatproviderIdentity
    kubernetesNetworkConfig? : ClusterstatusatproviderKubernetesnetworkconfig
    outpostConfig? : ClusterstatusatproviderOutpostconfig
    platformVersion? : str
    resourcesVpcConfig? : ClusterstatusatproviderResourcesvpcconfig
    status? : str
    version? : str

schema ClusterstatusatproviderAccessconfig:
    """
    The access configuration for the cluster.

    Attributes
    ----------
    authenticationMode : str, optional
        The authentication mode used for the cluster.
    """
    authenticationMode? : str

schema ClusterstatusatproviderIdentity:
    """
    The identity provider information for the cluster.

    Attributes
    ----------
    oidc : ClusterstatusatprovideridentityOidc, optional
        The OpenID Connect (https://openid.net/connect/) identity provider information
        for the cluster.
    """
    oidc? : ClusterstatusatprovideridentityOidc

schema ClusterstatusatprovideridentityOidc:
    """
    The OpenID Connect (https://openid.net/connect/) identity provider information
    for the cluster.

    Attributes
    ----------
    issuer : str, optional
        The issuer URL for the OpenID Connect identity provider.
    """
    issuer? : str

schema ClusterstatusatproviderKubernetesnetworkconfig:
    """
    The Kubernetes network configuration for the cluster.

    Attributes
    ----------
    ipFamily : str, optional
        The IP family used to assign Kubernetes pod and service IP addresses. The IP
        family is always ipv4, unless you have a 1.21 or later cluster running version
        1.10.1 or later of the Amazon VPC CNI add-on and specified ipv6 when you created
        the cluster.
    serviceIpv4Cidr : str, optional
        The CIDR block that Kubernetes pod and service IP addresses are assigned from.
        Kubernetes assigns addresses from an IPv4 CIDR block assigned to a subnet that
        the node is in. If you didn't specify a CIDR block when you created the cluster,
        then Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16
        CIDR blocks. If this was specified, then it was specified when the cluster was
        created and it can't be changed.
    serviceIpv6Cidr : str, optional
        The CIDR block that Kubernetes pod and service IP addresses are assigned from if
        you created a 1.21 or later cluster with version 1.10.1 or later of the Amazon
        VPC CNI add-on and specified ipv6 for ipFamily when you created the cluster.
        Kubernetes assigns service addresses from the unique local address range
        (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create
        the cluster.
    """
    ipFamily? : str
    serviceIpv4Cidr? : str
    serviceIpv6Cidr? : str

schema ClusterstatusatproviderOutpostconfig:
    """
    An object representing the configuration of your local Amazon EKS cluster on an
    Amazon Web Services Outpost. This object isn't available for clusters on the
    Amazon Web Services cloud.

    Attributes
    ----------
    controlPlaneInstanceType : str, optional
        The Amazon EC2 instance type used for the control plane. The instance type is
        the same for all control plane instances.

        This member is required.
    outpostArns : [str], optional
        The ARN of the Outpost that you specified for use with your local Amazon EKS
        cluster on Outposts.

        This member is required.
    """
    controlPlaneInstanceType? : str
    outpostArns? : [str]

schema ClusterstatusatproviderResourcesvpcconfig:
    """
    The VPC configuration used by the cluster control plane. Amazon EKS VPC resources
    have specific requirements to work properly with Kubernetes. For more information,
    see Cluster VPC Considerations (https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html)
    and Cluster Security Group Considerations (https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html)
    in the Amazon EKS User Guide.

    Attributes
    ----------
    clusterSecurityGroupId : str, optional
        The cluster security group that was created by Amazon EKS for the cluster.
        Managed node groups use this security group for control-plane-to-data-plane
        communication.
    vpcId : str, optional
        The VPC associated with your cluster.
    """
    clusterSecurityGroupId? : str
    vpcId? : str

schema ClusterstatusConditionsitem:
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
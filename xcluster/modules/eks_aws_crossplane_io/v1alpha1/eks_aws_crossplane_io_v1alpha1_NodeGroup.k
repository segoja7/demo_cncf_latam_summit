"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Nodegroup:
    """
    A NodeGroup is a managed resource that represents an AWS Elastic Kubernetes
    Service NodeGroup.

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
    spec : NodegroupSpec, required
        A NodeGroupSpec defines the desired state of an EKS NodeGroup.
    status : NodegroupStatus, optional
        A NodeGroupStatus represents the observed state of an EKS NodeGroup.
    """
    apiVersion : str = "eks.aws.crossplane.io/v1alpha1"
    kind : str = "NodeGroup"
    metadata? : any
    spec : NodegroupSpec
    status? : NodegroupStatus

schema NodegroupSpec:
    """
    A NodeGroupSpec defines the desired state of an EKS NodeGroup.

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
    forProvider : NodegroupspecForprovider, required
        NodeGroupParameters define the desired state of an AWS Elastic Kubernetes
        Service NodeGroup.
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
    providerConfigRef : NodegroupspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : NodegroupspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : NodegroupspecWriteconnectionsecrettoref, optional
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
    forProvider : NodegroupspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : NodegroupspecProviderconfigref
    publishConnectionDetailsTo? : NodegroupspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : NodegroupspecWriteconnectionsecrettoref

schema NodegroupspecForprovider:
    """
    NodeGroupParameters define the desired state of an AWS Elastic Kubernetes
    Service NodeGroup.

    Attributes
    ----------
    amiType : str, optional
        The AMI type for your node group.
        GPU instance can use
        AL2_x86_64_GPU AMI type,
        which uses the Amazon EKS-optimized Linux AMI with GPU support.
        Non-GPU instances can use
        AL2_x86_64 (default) AMI type,
        which uses the Amazon EKS-optimized Linux AMI or,
        BOTTLEROCKET_ARM_64 AMI type,
        which uses the Amazon Bottlerocket AMI for ARM instances, or
        BOTTLEROCKET_x86_64 AMI type,
        which uses the Amazon Bottlerocket AMI fir x86_64 instances.
    capacityType : "ON_DEMAND" | "SPOT", optional
        CapacityType for your node group.
    clusterName : str, optional
        The name of the cluster to create the node group in.

        ClusterName is a required field
    clusterNameRef : NodegroupspecforproviderClusternameref, optional
        ClusterNameRef is a reference to a Cluster used to set
        the ClusterName.
    clusterNameSelector : NodegroupspecforproviderClusternameselector, optional
        ClusterNameSelector selects references to a Cluster used
        to set the ClusterName.
    diskSize : int, optional
        The root device disk size (in GiB) for your node group instances. The default
        disk size is 20 GiB.
    instanceTypes : [str], optional
        The instance type to use for your node group. Currently, you can specify
        a single instance type for a node group. The default value for this parameter
        is t3.medium. If you choose a GPU instance type, be sure to specify the AL2_x86_64_GPU
        with the amiType parameter.
    labels : {str:str}, optional
        The Kubernetes labels to be applied to the nodes in the node group when they
        are created.
    launchTemplate : NodegroupspecforproviderLaunchtemplate, optional
        An object representing a node group's launch template specification. If
        specified, then do not specify instanceTypes, diskSize, or remoteAccess and make
        sure that the launch template meets the requirements in
        launchTemplateSpecification.
    nodeRole : str, optional
        The Amazon Resource Name (ARN) of the IAM role to associate with your node
        group. The Amazon EKS worker node kubelet daemon makes calls to AWS APIs
        on your behalf. Worker nodes receive permissions for these API calls through
        an IAM instance profile and associated policies. Before you can launch worker
        nodes and register them into a cluster, you must create an IAM role for those
        worker nodes to use when they are launched. For more information, see Amazon
        EKS Worker Node IAM Role (https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html)
        in the Amazon EKS User Guide .

        NodeRole is a required field
    nodeRoleRef : NodegroupspecforproviderNoderoleref, optional
        NodeRoleRef is a reference to a Cluster used to set the NodeRole.
    nodeRoleSelector : NodegroupspecforproviderNoderoleselector, optional
        NodeRoleSelector selects references to a Cluster used
        to set the NodeRole.
    region : str, required
        Region is the region you'd like  the NodeGroup to be created in.
    releaseVersion : str, optional
        The AMI version of the Amazon EKS-optimized AMI to use with your node group.
        By default, the latest available AMI version for the node group's current
        Kubernetes version is used. For more information, see Amazon EKS-Optimized
        Linux AMI Versions (https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
        in the Amazon EKS User Guide.
    remoteAccess : NodegroupspecforproviderRemoteaccess, optional
        The remote access (SSH) configuration to use with your node group.
    scalingConfig : NodegroupspecforproviderScalingconfig, optional
        The scaling configuration details for the Auto Scaling group that is created
        for your node group.
    subnetRefs : [NodegroupspecforproviderSubnetrefsitem], optional
        SubnetRefs are references to Subnets used to set the Subnets.
    subnetSelector : NodegroupspecforproviderSubnetselector, optional
        SubnetSelector selects references to Subnets used to set the Subnets.
    subnets : [str], optional
        The subnets to use for the Auto Scaling group that is created for your node
        group. These subnets must have the tag key kubernetes.io/cluster/CLUSTER_NAME
        with a value of shared, where CLUSTER_NAME is replaced with the name of your
        cluster.

        Subnets is a required field
    tags : {str:str}, optional
        The metadata to apply to the node group to assist with categorization and
        organization. Each tag consists of a key and an optional value, both of which
        you define. Node group tags do not propagate to any other resources associated
        with the node group, such as the Amazon EC2 instances or subnets.
    taints : [NodegroupspecforproviderTaintsitem], optional
        The Kubernetes taints to be applied to the nodes in the node group.
    updateConfig : NodegroupspecforproviderUpdateconfig, optional
        Specifies details on how the Nodes in this NodeGroup should be updated.
    version : str, optional
        The Kubernetes version to use for your managed nodes. By default, the Kubernetes
        version of the cluster is used, and this is the only accepted specified value.
    """
    amiType? : str
    capacityType? : "ON_DEMAND" | "SPOT"
    clusterName? : str
    clusterNameRef? : NodegroupspecforproviderClusternameref
    clusterNameSelector? : NodegroupspecforproviderClusternameselector
    diskSize? : int
    instanceTypes? : [str]
    labels? : {str:str}
    launchTemplate? : NodegroupspecforproviderLaunchtemplate
    nodeRole? : str
    nodeRoleRef? : NodegroupspecforproviderNoderoleref
    nodeRoleSelector? : NodegroupspecforproviderNoderoleselector
    region : str
    releaseVersion? : str
    remoteAccess? : NodegroupspecforproviderRemoteaccess
    scalingConfig? : NodegroupspecforproviderScalingconfig
    subnetRefs? : [NodegroupspecforproviderSubnetrefsitem]
    subnetSelector? : NodegroupspecforproviderSubnetselector
    subnets? : [str]
    tags? : {str:str}
    taints? : [NodegroupspecforproviderTaintsitem]
    updateConfig? : NodegroupspecforproviderUpdateconfig
    version? : str

schema NodegroupspecforproviderClusternameref:
    """
    ClusterNameRef is a reference to a Cluster used to set
    the ClusterName.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforproviderclusternamerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforproviderclusternamerefPolicy

schema NodegroupspecforproviderclusternamerefPolicy:
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

schema NodegroupspecforproviderClusternameselector:
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
    policy : NodegroupspecforproviderclusternameselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforproviderclusternameselectorPolicy

schema NodegroupspecforproviderclusternameselectorPolicy:
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

schema NodegroupspecforproviderLaunchtemplate:
    """
    An object representing a node group's launch template specification. If
    specified, then do not specify instanceTypes, diskSize, or remoteAccess and make
    sure that the launch template meets the requirements in
    launchTemplateSpecification.

    Attributes
    ----------
    id : str, optional
        The ID of the launch template.
    name : str, optional
        The name of the launch template.
    nameRef : NodegroupspecforproviderlaunchtemplateNameref, optional
        NameRef is a reference to a LaunchTemplate used to set
        the Name.
    nameSelector : NodegroupspecforproviderlaunchtemplateNameselector, optional
        NameSelector selects references to a LaunchTemplate used
        to set the Name.
    version : str, optional
        The version of the launch template to use. If no version is specified, then the
        template's default version is used.
    versionRef : NodegroupspecforproviderlaunchtemplateVersionref, optional
        VersionRef is a reference to a LaunchTemplateVersion used to set
        the Version.
    versionSelector : NodegroupspecforproviderlaunchtemplateVersionselector, optional
        VersionSelector selects references to a LaunchTemplateVersion used
        to set the Version.
    """
    id? : str
    name? : str
    nameRef? : NodegroupspecforproviderlaunchtemplateNameref
    nameSelector? : NodegroupspecforproviderlaunchtemplateNameselector
    version? : str
    versionRef? : NodegroupspecforproviderlaunchtemplateVersionref
    versionSelector? : NodegroupspecforproviderlaunchtemplateVersionselector

schema NodegroupspecforproviderlaunchtemplateNameref:
    """
    NameRef is a reference to a LaunchTemplate used to set
    the Name.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforproviderlaunchtemplatenamerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforproviderlaunchtemplatenamerefPolicy

schema NodegroupspecforproviderlaunchtemplatenamerefPolicy:
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

schema NodegroupspecforproviderlaunchtemplateNameselector:
    """
    NameSelector selects references to a LaunchTemplate used
    to set the Name.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforproviderlaunchtemplatenameselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforproviderlaunchtemplatenameselectorPolicy

schema NodegroupspecforproviderlaunchtemplatenameselectorPolicy:
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

schema NodegroupspecforproviderlaunchtemplateVersionref:
    """
    VersionRef is a reference to a LaunchTemplateVersion used to set
    the Version.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforproviderlaunchtemplateversionrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforproviderlaunchtemplateversionrefPolicy

schema NodegroupspecforproviderlaunchtemplateversionrefPolicy:
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

schema NodegroupspecforproviderlaunchtemplateVersionselector:
    """
    VersionSelector selects references to a LaunchTemplateVersion used
    to set the Version.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforproviderlaunchtemplateversionselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforproviderlaunchtemplateversionselectorPolicy

schema NodegroupspecforproviderlaunchtemplateversionselectorPolicy:
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

schema NodegroupspecforproviderNoderoleref:
    """
    NodeRoleRef is a reference to a Cluster used to set the NodeRole.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforprovidernoderolerefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforprovidernoderolerefPolicy

schema NodegroupspecforprovidernoderolerefPolicy:
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

schema NodegroupspecforproviderNoderoleselector:
    """
    NodeRoleSelector selects references to a Cluster used
    to set the NodeRole.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforprovidernoderoleselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforprovidernoderoleselectorPolicy

schema NodegroupspecforprovidernoderoleselectorPolicy:
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

schema NodegroupspecforproviderRemoteaccess:
    """
    The remote access (SSH) configuration to use with your node group.

    Attributes
    ----------
    ec2SSHKey : str, optional
        The Amazon EC2 SSH key that provides access for SSH communication with the
        worker nodes in the managed node group. For more information, see Amazon
        EC2 Key Pairs (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
        in the Amazon Elastic Compute Cloud User Guide for Linux Instances.
    sourceSecurityGroupRefs : [NodegroupspecforproviderremoteaccessSourcesecuritygrouprefsitem], optional
        SourceSecurityGroupRefs are references to SecurityGroups used to set
        the SourceSecurityGroups.
    sourceSecurityGroupSelector : NodegroupspecforproviderremoteaccessSourcesecuritygroupselector, optional
        SourceSecurityGroupSelector selects references to SecurityGroups used
        to set the SourceSecurityGroups.
    sourceSecurityGroups : [str], optional
        The security groups that are allowed SSH access (port 22) to the worker nodes.
        If you specify an Amazon EC2 SSH key but do not specify a source security
        group when you create a managed node group, then port 22 on the worker nodes
        is opened to the internet (0.0.0.0/0). For more information, see Security
        Groups for Your VPC (https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
        in the Amazon Virtual Private Cloud User Guide.
    """
    ec2SSHKey? : str
    sourceSecurityGroupRefs? : [NodegroupspecforproviderremoteaccessSourcesecuritygrouprefsitem]
    sourceSecurityGroupSelector? : NodegroupspecforproviderremoteaccessSourcesecuritygroupselector
    sourceSecurityGroups? : [str]

schema NodegroupspecforproviderremoteaccessSourcesecuritygrouprefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforproviderremoteaccesssourcesecuritygrouprefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforproviderremoteaccesssourcesecuritygrouprefsitemPolicy

schema NodegroupspecforproviderremoteaccesssourcesecuritygrouprefsitemPolicy:
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

schema NodegroupspecforproviderremoteaccessSourcesecuritygroupselector:
    """
    SourceSecurityGroupSelector selects references to SecurityGroups used
    to set the SourceSecurityGroups.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforproviderremoteaccesssourcesecuritygroupselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforproviderremoteaccesssourcesecuritygroupselectorPolicy

schema NodegroupspecforproviderremoteaccesssourcesecuritygroupselectorPolicy:
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

schema NodegroupspecforproviderScalingconfig:
    """
    The scaling configuration details for the Auto Scaling group that is created
    for your node group.

    Attributes
    ----------
    desiredSize : int, optional
        The current number of worker nodes that the managed node group should maintain.
        This value should be left unset if another controller, such as cluster-autoscaler,
        is expected to manage the desired size of the node group. If not set, the initial
        desired size will be the configured minimum size of the node group.
    maxSize : int, optional
        The maximum number of worker nodes that the managed node group can scale
        out to. Managed node groups can support up to 100 nodes by default.
    minSize : int, optional
        The minimum number of worker nodes that the managed node group can scale
        in to. This number must be greater than zero.
    """
    desiredSize? : int
    maxSize? : int
    minSize? : int

schema NodegroupspecforproviderSubnetrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforprovidersubnetrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforprovidersubnetrefsitemPolicy

schema NodegroupspecforprovidersubnetrefsitemPolicy:
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

schema NodegroupspecforproviderSubnetselector:
    """
    SubnetSelector selects references to Subnets used to set the Subnets.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforprovidersubnetselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforprovidersubnetselectorPolicy

schema NodegroupspecforprovidersubnetselectorPolicy:
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

schema NodegroupspecforproviderTaintsitem:
    """
    Taint is a property that allows a node to repel a set of pods.

    Attributes
    ----------
    effect : "NO_SCHEDULE" | "NO_EXECUTE" | "PREFER_NO_SCHEDULE", required
        The effect of the taint.
    key : str, optional
        The key of the taint.
    value : str, optional
        The value of the taint.
    """
    effect : "NO_SCHEDULE" | "NO_EXECUTE" | "PREFER_NO_SCHEDULE"
    key? : str
    value? : str

schema NodegroupspecforproviderUpdateconfig:
    """
    Specifies details on how the Nodes in this NodeGroup should be updated.

    Attributes
    ----------
    force : bool, optional
        Force the update if the existing node group's pods are unable to be
        drained due to a pod disruption budget issue. If an update fails because
        pods could not be drained, you can force the update after it fails to
        terminate the old node whether any pods are running on the node.
    maxUnavailable : int, optional
        The maximum number of nodes unavailable at once during a version update.
        Nodes will be updated in parallel. The maximum number is 100.
        This value or maxUnavailablePercentage is required to have a value, but
        not both.
    maxUnavailablePercentage : int, optional
        The maximum percentage of nodes unavailable during a version update. This
        percentage of nodes will be updated in parallel, up to 100 nodes at once.
        This value or maxUnavailable is required to have a value, but not both.
    """
    force? : bool
    maxUnavailable? : int
    maxUnavailablePercentage? : int

schema NodegroupspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecproviderconfigrefPolicy

schema NodegroupspecproviderconfigrefPolicy:
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

schema NodegroupspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : NodegroupspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : NodegroupspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : NodegroupspecpublishconnectiondetailstoConfigref
    metadata? : NodegroupspecpublishconnectiondetailstoMetadata
    name : str

schema NodegroupspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecpublishconnectiondetailstoconfigrefPolicy

schema NodegroupspecpublishconnectiondetailstoconfigrefPolicy:
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

schema NodegroupspecpublishconnectiondetailstoMetadata:
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

schema NodegroupspecWriteconnectionsecrettoref:
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

schema NodegroupStatus:
    """
    A NodeGroupStatus represents the observed state of an EKS NodeGroup.

    Attributes
    ----------
    atProvider : NodegroupstatusAtprovider, optional
        NodeGroupObservation is the observed state of a NodeGroup.
    conditions : [NodegroupstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : NodegroupstatusAtprovider
    conditions? : [NodegroupstatusConditionsitem]
    observedGeneration? : int

schema NodegroupstatusAtprovider:
    """
    NodeGroupObservation is the observed state of a NodeGroup.

    Attributes
    ----------
    createdAt : str, optional
        The Unix epoch timestamp in seconds for when the managed node group was created.
    modifiedAt : str, optional
        The Unix epoch timestamp in seconds for when the managed node group was last
        modified.
    nodeGroupArn : str, optional
        The Amazon Resource Name (ARN) associated with the managed node group.
    nodeGroupHealth : NodegroupstatusatproviderNodegrouphealth, optional
        The health status of the node group. If there are issues with your node group's
        health, they are listed here.
    releaseVersion : str, optional
        The AMI version of the Amazon EKS-optimized AMI to use with your node group. By
        default, the latest available AMI version for the node group's current Kubernetes
        version is used. For more information, see Amazon EKS-Optimized Linux AMI Versions
        (https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html) in
        the Amazon EKS User Guide.
    resources : NodegroupstatusatproviderResources, optional
        The resources associated with the node group, such as Auto Scaling groups
        and security groups for remote access.
    scalingConfig : NodegroupstatusatproviderScalingconfig, optional
        The scaling configuration details for the Auto Scaling group that is created
        for your node group.
    status : str, optional
        The current status of the managed node group.
    updateConfig : NodegroupstatusatproviderUpdateconfig, optional
        The current update configuration of the node group
    version : str, optional
        The Kubernetes version to use for your managed nodes. By default, the Kubernetes
        version of the cluster is used, and this is the only accepted specified value.
    """
    createdAt? : str
    modifiedAt? : str
    nodeGroupArn? : str
    nodeGroupHealth? : NodegroupstatusatproviderNodegrouphealth
    releaseVersion? : str
    resources? : NodegroupstatusatproviderResources
    scalingConfig? : NodegroupstatusatproviderScalingconfig
    status? : str
    updateConfig? : NodegroupstatusatproviderUpdateconfig
    version? : str

schema NodegroupstatusatproviderNodegrouphealth:
    """
    The health status of the node group. If there are issues with your node group's
    health, they are listed here.

    Attributes
    ----------
    issues : [NodegroupstatusatprovidernodegrouphealthIssuesitem], optional
        Any issues that are associated with the node group.
    """
    issues? : [NodegroupstatusatprovidernodegrouphealthIssuesitem]

schema NodegroupstatusatprovidernodegrouphealthIssuesitem:
    """
    Issue is an issue with a NodeGroup.

    Attributes
    ----------
    code : str, optional
        A brief description of the error.

           * AutoScalingGroupNotFound: We couldn't find the Auto Scaling group associated
           with the managed node group. You may be able to recreate an Auto Scaling
           group with the same settings to recover.

           * Ec2SecurityGroupNotFound: We couldn't find the cluster security group
           for the cluster. You must recreate your cluster.

           * Ec2SecurityGroupDeletionFailure: We could not delete the remote access
           security group for your managed node group. Remove any dependencies from
           the security group.

           * Ec2LaunchTemplateNotFound: We couldn't find the Amazon EC2 launch template
           for your managed node group. You may be able to recreate a launch template
           with the same settings to recover.

           * Ec2LaunchTemplateVersionMismatch: The Amazon EC2 launch template version
           for your managed node group does not match the version that Amazon EKS
           created. You may be able to revert to the version that Amazon EKS created
           to recover.

           * IamInstanceProfileNotFound: We couldn't find the IAM instance profile
           for your managed node group. You may be able to recreate an instance profile
           with the same settings to recover.

           * IamNodeRoleNotFound: We couldn't find the IAM role for your managed
           node group. You may be able to recreate an IAM role with the same settings
           to recover.

           * AsgInstanceLaunchFailures: Your Auto Scaling group is experiencing failures
           while attempting to launch instances.

           * NodeCreationFailure: Your launched instances are unable to register
           with your Amazon EKS cluster. Common causes of this failure are insufficient
           worker node IAM role (https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html)
           permissions or lack of outbound internet access for the nodes.

           * InstanceLimitExceeded: Your AWS account is unable to launch any more
           instances of the specified instance type. You may be able to request an
           Amazon EC2 instance limit increase to recover.

           * InsufficientFreeAddresses: One or more of the subnets associated with
           your managed node group does not have enough available IP addresses for
           new nodes.

           * AccessDenied: Amazon EKS or one or more of your managed nodes is unable
           to communicate with your cluster API server.

           * InternalFailure: These errors are usually caused by an Amazon EKS server-side
           issue.
    message : str, optional
        The error message associated with the issue.
    resourceIds : [str], optional
        The AWS resources that are afflicted by this issue.
    """
    code? : str
    message? : str
    resourceIds? : [str]

schema NodegroupstatusatproviderResources:
    """
    The resources associated with the node group, such as Auto Scaling groups
    and security groups for remote access.

    Attributes
    ----------
    autoScalingGroup : [NodegroupstatusatproviderresourcesAutoscalinggroupitem], optional
        The Auto Scaling groups associated with the node group.
    remoteAccessSecurityGroup : str, optional
        The remote access security group associated with the node group. This security
        group controls SSH access to the worker nodes.
    """
    autoScalingGroup? : [NodegroupstatusatproviderresourcesAutoscalinggroupitem]
    remoteAccessSecurityGroup? : str

schema NodegroupstatusatproviderresourcesAutoscalinggroupitem:
    """
    AutoScalingGroup is an autoscaling group associated with a NodeGroup.

    Attributes
    ----------
    name : str, optional
        The name of the Auto Scaling group associated with an Amazon EKS managed
        node group.
    """
    name? : str

schema NodegroupstatusatproviderScalingconfig:
    """
    The scaling configuration details for the Auto Scaling group that is created
    for your node group.

    Attributes
    ----------
    desiredSize : int, optional
        The current number of worker nodes for the managed node group.
    """
    desiredSize? : int

schema NodegroupstatusatproviderUpdateconfig:
    """
    The current update configuration of the node group

    Attributes
    ----------
    maxUnavailable : int, optional
        The current maximum number of nodes unavailable at once during a version update.
    maxUnavailablePercentage : int, optional
        The current maximum percentage of nodes unavailable during a version
        update. This percentage of nodes will be updated in parallel.
    """
    maxUnavailable? : int
    maxUnavailablePercentage? : int

schema NodegroupstatusConditionsitem:
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
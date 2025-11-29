"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Nodegroup:
    """
    NodeGroup is the Schema for the NodeGroups API. Manages an EKS Node Group

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
        NodeGroupSpec defines the desired state of NodeGroup
    status : NodegroupStatus, optional
        NodeGroupStatus defines the observed state of NodeGroup.
    """
    apiVersion : str = "eks.aws.upbound.io/v1beta1"
    kind : str = "NodeGroup"
    metadata? : any
    spec : NodegroupSpec
    status? : NodegroupStatus

schema NodegroupSpec:
    """
    NodeGroupSpec defines the desired state of NodeGroup

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
        No description available.
    initProvider : NodegroupspecInitprovider, optional
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
    providerConfigRef : NodegroupspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    writeConnectionSecretToRef : NodegroupspecWriteconnectionsecrettoref, optional
        WriteConnectionSecretToReference specifies the namespace and name of a
        Secret to which any connection details for this managed resource should
        be written. Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    """
    deletionPolicy? : "Orphan" | "Delete"
    forProvider : NodegroupspecForprovider
    initProvider? : NodegroupspecInitprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : NodegroupspecProviderconfigref
    writeConnectionSecretToRef? : NodegroupspecWriteconnectionsecrettoref

schema NodegroupspecForprovider:
    """
    NodegroupspecForprovider schema.

    Attributes
    ----------
    amiType : str, optional
        Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the AWS documentation for valid values.
    capacityType : str, optional
        Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT.
    clusterName : str, optional
        Name of the EKS Cluster.
    clusterNameRef : NodegroupspecforproviderClusternameref, optional
        Reference to a Cluster in eks to populate clusterName.
    clusterNameSelector : NodegroupspecforproviderClusternameselector, optional
        Selector for a Cluster in eks to populate clusterName.
    diskSize : float, optional
        Disk size in GiB for worker nodes. Defaults to 50 for Windows, 20 all other node groups.
    forceUpdateVersion : bool, optional
        Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
    instanceTypes : [str], optional
        List of instance types associated with the EKS Node Group. Defaults to ["t3.medium"].
    labels : {str:str}, optional
        Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
    launchTemplate : [NodegroupspecforproviderLaunchtemplateitem], optional
        Configuration block with Launch Template settings. See launch_template below for details. Conflicts with remote_access.
    nodeRepairConfig : [NodegroupspecforproviderNoderepairconfigitem], optional
        The node auto repair configuration for the node group. See node_repair_config below for details.
    nodeRoleArn : str, optional
        Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group.
    nodeRoleArnRef : NodegroupspecforproviderNoderolearnref, optional
        Reference to a Role in iam to populate nodeRoleArn.
    nodeRoleArnSelector : NodegroupspecforproviderNoderolearnselector, optional
        Selector for a Role in iam to populate nodeRoleArn.
    region : str, required
        Region where this resource will be managed. Defaults to the Region set in the provider configuration.
        Region is the region you'd like your resource to be created in.
    releaseVersion : str, optional
        AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
    remoteAccess : [NodegroupspecforproviderRemoteaccessitem], optional
        Configuration block with remote access settings. See remote_access below for details. Conflicts with launch_template.
    scalingConfig : [NodegroupspecforproviderScalingconfigitem], optional
        Configuration block with scaling settings. See scaling_config below for details.
    subnetIdRefs : [NodegroupspecforproviderSubnetidrefsitem], optional
        References to Subnet in ec2 to populate subnetIds.
    subnetIdSelector : NodegroupspecforproviderSubnetidselector, optional
        Selector for a list of Subnet in ec2 to populate subnetIds.
    subnetIds : [str], optional
        Identifiers of EC2 Subnets to associate with the EKS Node Group. Amazon EKS managed node groups can be launched in both public and private subnets. If you plan to deploy load balancers to a subnet, the private subnet must have tag kubernetes.io/role/internal-elb, the public subnet must have tag kubernetes.io/role/elb.
    tags : {str:str}, optional
        Key-value map of resource tags.
    taint : [NodegroupspecforproviderTaintitem], optional
        The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
    updateConfig : [NodegroupspecforproviderUpdateconfigitem], optional
        Configuration block with update settings. See update_config below for details.
    version : str, optional
        Kubernetes version. Defaults to EKS Cluster Kubernetes version.
    versionRef : NodegroupspecforproviderVersionref, optional
        Reference to a Cluster in eks to populate version.
    versionSelector : NodegroupspecforproviderVersionselector, optional
        Selector for a Cluster in eks to populate version.
    """
    amiType? : str
    capacityType? : str
    clusterName? : str
    clusterNameRef? : NodegroupspecforproviderClusternameref
    clusterNameSelector? : NodegroupspecforproviderClusternameselector
    diskSize? : float
    forceUpdateVersion? : bool
    instanceTypes? : [str]
    labels? : {str:str}
    launchTemplate? : [NodegroupspecforproviderLaunchtemplateitem]
    nodeRepairConfig? : [NodegroupspecforproviderNoderepairconfigitem]
    nodeRoleArn? : str
    nodeRoleArnRef? : NodegroupspecforproviderNoderolearnref
    nodeRoleArnSelector? : NodegroupspecforproviderNoderolearnselector
    region : str
    releaseVersion? : str
    remoteAccess? : [NodegroupspecforproviderRemoteaccessitem]
    scalingConfig? : [NodegroupspecforproviderScalingconfigitem]
    subnetIdRefs? : [NodegroupspecforproviderSubnetidrefsitem]
    subnetIdSelector? : NodegroupspecforproviderSubnetidselector
    subnetIds? : [str]
    tags? : {str:str}
    taint? : [NodegroupspecforproviderTaintitem]
    updateConfig? : [NodegroupspecforproviderUpdateconfigitem]
    version? : str
    versionRef? : NodegroupspecforproviderVersionref
    versionSelector? : NodegroupspecforproviderVersionselector

schema NodegroupspecforproviderClusternameref:
    """
    Reference to a Cluster in eks to populate clusterName.

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
    Selector for a Cluster in eks to populate clusterName.

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

schema NodegroupspecforproviderLaunchtemplateitem:
    """
    NodegroupspecforproviderLaunchtemplateitem schema.

    Attributes
    ----------
    id : str, optional
        Identifier of the EC2 Launch Template. Conflicts with name.
    name : str, optional
        Name of the EC2 Launch Template. Conflicts with id.
    version : str, optional
        EC2 Launch Template version number.
    """
    id? : str
    name? : str
    version? : str

schema NodegroupspecforproviderNoderepairconfigitem:
    """
    NodegroupspecforproviderNoderepairconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Specifies whether to enable node auto repair for the node group. Node auto repair is disabled by default.
    """
    enabled? : bool

schema NodegroupspecforproviderNoderolearnref:
    """
    Reference to a Role in iam to populate nodeRoleArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforprovidernoderolearnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforprovidernoderolearnrefPolicy

schema NodegroupspecforprovidernoderolearnrefPolicy:
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

schema NodegroupspecforproviderNoderolearnselector:
    """
    Selector for a Role in iam to populate nodeRoleArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforprovidernoderolearnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforprovidernoderolearnselectorPolicy

schema NodegroupspecforprovidernoderolearnselectorPolicy:
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

schema NodegroupspecforproviderRemoteaccessitem:
    """
    NodegroupspecforproviderRemoteaccessitem schema.

    Attributes
    ----------
    ec2SshKey : str, optional
        EC2 Key Pair name that provides access for remote communication with the worker nodes in the EKS Node Group. If you specify this configuration, but do not specify source_security_group_ids when you create an EKS Node Group, either port 3389 for Windows, or port 22 for all other operating systems is opened on the worker nodes to the Internet (0.0.0.0/0). For Windows nodes, this will allow you to use RDP, for all others this allows you to SSH into the worker nodes.
    sourceSecurityGroupIdRefs : [NodegroupspecforproviderremoteaccessitemSourcesecuritygroupidrefsitem], optional
        References to SecurityGroup in ec2 to populate sourceSecurityGroupIds.
    sourceSecurityGroupIdSelector : NodegroupspecforproviderremoteaccessitemSourcesecuritygroupidselector, optional
        Selector for a list of SecurityGroup in ec2 to populate sourceSecurityGroupIds.
    sourceSecurityGroupIds : [str], optional
        Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes. If you specify ec2_ssh_key, but do not specify this configuration when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0).
    """
    ec2SshKey? : str
    sourceSecurityGroupIdRefs? : [NodegroupspecforproviderremoteaccessitemSourcesecuritygroupidrefsitem]
    sourceSecurityGroupIdSelector? : NodegroupspecforproviderremoteaccessitemSourcesecuritygroupidselector
    sourceSecurityGroupIds? : [str]

schema NodegroupspecforproviderremoteaccessitemSourcesecuritygroupidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforproviderremoteaccessitemsourcesecuritygroupidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforproviderremoteaccessitemsourcesecuritygroupidrefsitemPolicy

schema NodegroupspecforproviderremoteaccessitemsourcesecuritygroupidrefsitemPolicy:
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

schema NodegroupspecforproviderremoteaccessitemSourcesecuritygroupidselector:
    """
    Selector for a list of SecurityGroup in ec2 to populate sourceSecurityGroupIds.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforproviderremoteaccessitemsourcesecuritygroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforproviderremoteaccessitemsourcesecuritygroupidselectorPolicy

schema NodegroupspecforproviderremoteaccessitemsourcesecuritygroupidselectorPolicy:
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

schema NodegroupspecforproviderScalingconfigitem:
    """
    NodegroupspecforproviderScalingconfigitem schema.

    Attributes
    ----------
    desiredSize : float, optional
        Desired number of worker nodes.
    maxSize : float, optional
        Maximum number of worker nodes.
    minSize : float, optional
        Minimum number of worker nodes.
    """
    desiredSize? : float
    maxSize? : float
    minSize? : float

schema NodegroupspecforproviderSubnetidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforprovidersubnetidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforprovidersubnetidrefsitemPolicy

schema NodegroupspecforprovidersubnetidrefsitemPolicy:
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

schema NodegroupspecforproviderSubnetidselector:
    """
    Selector for a list of Subnet in ec2 to populate subnetIds.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforprovidersubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforprovidersubnetidselectorPolicy

schema NodegroupspecforprovidersubnetidselectorPolicy:
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

schema NodegroupspecforproviderTaintitem:
    """
    NodegroupspecforproviderTaintitem schema.

    Attributes
    ----------
    effect : str, optional
        The effect of the taint. Valid values: NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE.
    key : str, optional
        The key of the taint. Maximum length of 63.
    value : str, optional
        The value of the taint. Maximum length of 63.
    """
    effect? : str
    key? : str
    value? : str

schema NodegroupspecforproviderUpdateconfigitem:
    """
    NodegroupspecforproviderUpdateconfigitem schema.

    Attributes
    ----------
    maxUnavailable : float, optional
        Desired max number of unavailable worker nodes during node group update.
    maxUnavailablePercentage : float, optional
        Desired max percentage of unavailable worker nodes during node group update.
    """
    maxUnavailable? : float
    maxUnavailablePercentage? : float

schema NodegroupspecforproviderVersionref:
    """
    Reference to a Cluster in eks to populate version.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecforproviderversionrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecforproviderversionrefPolicy

schema NodegroupspecforproviderversionrefPolicy:
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

schema NodegroupspecforproviderVersionselector:
    """
    Selector for a Cluster in eks to populate version.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecforproviderversionselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecforproviderversionselectorPolicy

schema NodegroupspecforproviderversionselectorPolicy:
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

schema NodegroupspecInitprovider:
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
    amiType : str, optional
        Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the AWS documentation for valid values.
    capacityType : str, optional
        Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT.
    diskSize : float, optional
        Disk size in GiB for worker nodes. Defaults to 50 for Windows, 20 all other node groups.
    forceUpdateVersion : bool, optional
        Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
    instanceTypes : [str], optional
        List of instance types associated with the EKS Node Group. Defaults to ["t3.medium"].
    labels : {str:str}, optional
        Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
    launchTemplate : [NodegroupspecinitproviderLaunchtemplateitem], optional
        Configuration block with Launch Template settings. See launch_template below for details. Conflicts with remote_access.
    nodeRepairConfig : [NodegroupspecinitproviderNoderepairconfigitem], optional
        The node auto repair configuration for the node group. See node_repair_config below for details.
    nodeRoleArn : str, optional
        Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group.
    nodeRoleArnRef : NodegroupspecinitproviderNoderolearnref, optional
        Reference to a Role in iam to populate nodeRoleArn.
    nodeRoleArnSelector : NodegroupspecinitproviderNoderolearnselector, optional
        Selector for a Role in iam to populate nodeRoleArn.
    releaseVersion : str, optional
        AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
    remoteAccess : [NodegroupspecinitproviderRemoteaccessitem], optional
        Configuration block with remote access settings. See remote_access below for details. Conflicts with launch_template.
    scalingConfig : [NodegroupspecinitproviderScalingconfigitem], optional
        Configuration block with scaling settings. See scaling_config below for details.
    subnetIdRefs : [NodegroupspecinitproviderSubnetidrefsitem], optional
        References to Subnet in ec2 to populate subnetIds.
    subnetIdSelector : NodegroupspecinitproviderSubnetidselector, optional
        Selector for a list of Subnet in ec2 to populate subnetIds.
    subnetIds : [str], optional
        Identifiers of EC2 Subnets to associate with the EKS Node Group. Amazon EKS managed node groups can be launched in both public and private subnets. If you plan to deploy load balancers to a subnet, the private subnet must have tag kubernetes.io/role/internal-elb, the public subnet must have tag kubernetes.io/role/elb.
    tags : {str:str}, optional
        Key-value map of resource tags.
    taint : [NodegroupspecinitproviderTaintitem], optional
        The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
    updateConfig : [NodegroupspecinitproviderUpdateconfigitem], optional
        Configuration block with update settings. See update_config below for details.
    version : str, optional
        Kubernetes version. Defaults to EKS Cluster Kubernetes version.
    versionRef : NodegroupspecinitproviderVersionref, optional
        Reference to a Cluster in eks to populate version.
    versionSelector : NodegroupspecinitproviderVersionselector, optional
        Selector for a Cluster in eks to populate version.
    """
    amiType? : str
    capacityType? : str
    diskSize? : float
    forceUpdateVersion? : bool
    instanceTypes? : [str]
    labels? : {str:str}
    launchTemplate? : [NodegroupspecinitproviderLaunchtemplateitem]
    nodeRepairConfig? : [NodegroupspecinitproviderNoderepairconfigitem]
    nodeRoleArn? : str
    nodeRoleArnRef? : NodegroupspecinitproviderNoderolearnref
    nodeRoleArnSelector? : NodegroupspecinitproviderNoderolearnselector
    releaseVersion? : str
    remoteAccess? : [NodegroupspecinitproviderRemoteaccessitem]
    scalingConfig? : [NodegroupspecinitproviderScalingconfigitem]
    subnetIdRefs? : [NodegroupspecinitproviderSubnetidrefsitem]
    subnetIdSelector? : NodegroupspecinitproviderSubnetidselector
    subnetIds? : [str]
    tags? : {str:str}
    taint? : [NodegroupspecinitproviderTaintitem]
    updateConfig? : [NodegroupspecinitproviderUpdateconfigitem]
    version? : str
    versionRef? : NodegroupspecinitproviderVersionref
    versionSelector? : NodegroupspecinitproviderVersionselector

schema NodegroupspecinitproviderLaunchtemplateitem:
    """
    NodegroupspecinitproviderLaunchtemplateitem schema.

    Attributes
    ----------
    id : str, optional
        Identifier of the EC2 Launch Template. Conflicts with name.
    name : str, optional
        Name of the EC2 Launch Template. Conflicts with id.
    version : str, optional
        EC2 Launch Template version number.
    """
    id? : str
    name? : str
    version? : str

schema NodegroupspecinitproviderNoderepairconfigitem:
    """
    NodegroupspecinitproviderNoderepairconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Specifies whether to enable node auto repair for the node group. Node auto repair is disabled by default.
    """
    enabled? : bool

schema NodegroupspecinitproviderNoderolearnref:
    """
    Reference to a Role in iam to populate nodeRoleArn.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecinitprovidernoderolearnrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecinitprovidernoderolearnrefPolicy

schema NodegroupspecinitprovidernoderolearnrefPolicy:
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

schema NodegroupspecinitproviderNoderolearnselector:
    """
    Selector for a Role in iam to populate nodeRoleArn.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecinitprovidernoderolearnselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecinitprovidernoderolearnselectorPolicy

schema NodegroupspecinitprovidernoderolearnselectorPolicy:
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

schema NodegroupspecinitproviderRemoteaccessitem:
    """
    NodegroupspecinitproviderRemoteaccessitem schema.

    Attributes
    ----------
    ec2SshKey : str, optional
        EC2 Key Pair name that provides access for remote communication with the worker nodes in the EKS Node Group. If you specify this configuration, but do not specify source_security_group_ids when you create an EKS Node Group, either port 3389 for Windows, or port 22 for all other operating systems is opened on the worker nodes to the Internet (0.0.0.0/0). For Windows nodes, this will allow you to use RDP, for all others this allows you to SSH into the worker nodes.
    sourceSecurityGroupIdRefs : [NodegroupspecinitproviderremoteaccessitemSourcesecuritygroupidrefsitem], optional
        References to SecurityGroup in ec2 to populate sourceSecurityGroupIds.
    sourceSecurityGroupIdSelector : NodegroupspecinitproviderremoteaccessitemSourcesecuritygroupidselector, optional
        Selector for a list of SecurityGroup in ec2 to populate sourceSecurityGroupIds.
    sourceSecurityGroupIds : [str], optional
        Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes. If you specify ec2_ssh_key, but do not specify this configuration when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0).
    """
    ec2SshKey? : str
    sourceSecurityGroupIdRefs? : [NodegroupspecinitproviderremoteaccessitemSourcesecuritygroupidrefsitem]
    sourceSecurityGroupIdSelector? : NodegroupspecinitproviderremoteaccessitemSourcesecuritygroupidselector
    sourceSecurityGroupIds? : [str]

schema NodegroupspecinitproviderremoteaccessitemSourcesecuritygroupidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecinitproviderremoteaccessitemsourcesecuritygroupidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecinitproviderremoteaccessitemsourcesecuritygroupidrefsitemPolicy

schema NodegroupspecinitproviderremoteaccessitemsourcesecuritygroupidrefsitemPolicy:
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

schema NodegroupspecinitproviderremoteaccessitemSourcesecuritygroupidselector:
    """
    Selector for a list of SecurityGroup in ec2 to populate sourceSecurityGroupIds.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecinitproviderremoteaccessitemsourcesecuritygroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecinitproviderremoteaccessitemsourcesecuritygroupidselectorPolicy

schema NodegroupspecinitproviderremoteaccessitemsourcesecuritygroupidselectorPolicy:
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

schema NodegroupspecinitproviderScalingconfigitem:
    """
    NodegroupspecinitproviderScalingconfigitem schema.

    Attributes
    ----------
    desiredSize : float, optional
        Desired number of worker nodes.
    maxSize : float, optional
        Maximum number of worker nodes.
    minSize : float, optional
        Minimum number of worker nodes.
    """
    desiredSize? : float
    maxSize? : float
    minSize? : float

schema NodegroupspecinitproviderSubnetidrefsitem:
    """
    A Reference to a named object.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecinitprovidersubnetidrefsitemPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecinitprovidersubnetidrefsitemPolicy

schema NodegroupspecinitprovidersubnetidrefsitemPolicy:
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

schema NodegroupspecinitproviderSubnetidselector:
    """
    Selector for a list of Subnet in ec2 to populate subnetIds.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecinitprovidersubnetidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecinitprovidersubnetidselectorPolicy

schema NodegroupspecinitprovidersubnetidselectorPolicy:
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

schema NodegroupspecinitproviderTaintitem:
    """
    NodegroupspecinitproviderTaintitem schema.

    Attributes
    ----------
    effect : str, optional
        The effect of the taint. Valid values: NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE.
    key : str, optional
        The key of the taint. Maximum length of 63.
    value : str, optional
        The value of the taint. Maximum length of 63.
    """
    effect? : str
    key? : str
    value? : str

schema NodegroupspecinitproviderUpdateconfigitem:
    """
    NodegroupspecinitproviderUpdateconfigitem schema.

    Attributes
    ----------
    maxUnavailable : float, optional
        Desired max number of unavailable worker nodes during node group update.
    maxUnavailablePercentage : float, optional
        Desired max percentage of unavailable worker nodes during node group update.
    """
    maxUnavailable? : float
    maxUnavailablePercentage? : float

schema NodegroupspecinitproviderVersionref:
    """
    Reference to a Cluster in eks to populate version.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : NodegroupspecinitproviderversionrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : NodegroupspecinitproviderversionrefPolicy

schema NodegroupspecinitproviderversionrefPolicy:
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

schema NodegroupspecinitproviderVersionselector:
    """
    Selector for a Cluster in eks to populate version.

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : NodegroupspecinitproviderversionselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : NodegroupspecinitproviderversionselectorPolicy

schema NodegroupspecinitproviderversionselectorPolicy:
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

schema NodegroupspecWriteconnectionsecrettoref:
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

schema NodegroupStatus:
    """
    NodeGroupStatus defines the observed state of NodeGroup.

    Attributes
    ----------
    atProvider : NodegroupstatusAtprovider, optional
        No description available.
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
    NodegroupstatusAtprovider schema.

    Attributes
    ----------
    amiType : str, optional
        Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the AWS documentation for valid values.
    arn : str, optional
        Amazon Resource Name (ARN) of the EKS Node Group.
    capacityType : str, optional
        Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT.
    clusterName : str, optional
        Name of the EKS Cluster.
    diskSize : float, optional
        Disk size in GiB for worker nodes. Defaults to 50 for Windows, 20 all other node groups.
    forceUpdateVersion : bool, optional
        Force version update if existing pods are unable to be drained due to a pod disruption budget issue.
    id : str, optional
        EKS Cluster name and EKS Node Group name separated by a colon (:).
    instanceTypes : [str], optional
        List of instance types associated with the EKS Node Group. Defaults to ["t3.medium"].
    labels : {str:str}, optional
        Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed.
    launchTemplate : [NodegroupstatusatproviderLaunchtemplateitem], optional
        Configuration block with Launch Template settings. See launch_template below for details. Conflicts with remote_access.
    nodeRepairConfig : [NodegroupstatusatproviderNoderepairconfigitem], optional
        The node auto repair configuration for the node group. See node_repair_config below for details.
    nodeRoleArn : str, optional
        Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group.
    region : str, optional
        Region where this resource will be managed. Defaults to the Region set in the provider configuration.
        Region is the region you'd like your resource to be created in.
    releaseVersion : str, optional
        AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version.
    remoteAccess : [NodegroupstatusatproviderRemoteaccessitem], optional
        Configuration block with remote access settings. See remote_access below for details. Conflicts with launch_template.
    resources : [NodegroupstatusatproviderResourcesitem], optional
        List of objects containing information about underlying resources.
    scalingConfig : [NodegroupstatusatproviderScalingconfigitem], optional
        Configuration block with scaling settings. See scaling_config below for details.
    status : str, optional
        Status of the EKS Node Group.
    subnetIds : [str], optional
        Identifiers of EC2 Subnets to associate with the EKS Node Group. Amazon EKS managed node groups can be launched in both public and private subnets. If you plan to deploy load balancers to a subnet, the private subnet must have tag kubernetes.io/role/internal-elb, the public subnet must have tag kubernetes.io/role/elb.
    tags : {str:str}, optional
        Key-value map of resource tags.
    tagsAll : {str:str}, optional
        A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
    taint : [NodegroupstatusatproviderTaintitem], optional
        The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. See taint below for details.
    updateConfig : [NodegroupstatusatproviderUpdateconfigitem], optional
        Configuration block with update settings. See update_config below for details.
    version : str, optional
        Kubernetes version. Defaults to EKS Cluster Kubernetes version.
    """
    amiType? : str
    arn? : str
    capacityType? : str
    clusterName? : str
    diskSize? : float
    forceUpdateVersion? : bool
    id? : str
    instanceTypes? : [str]
    labels? : {str:str}
    launchTemplate? : [NodegroupstatusatproviderLaunchtemplateitem]
    nodeRepairConfig? : [NodegroupstatusatproviderNoderepairconfigitem]
    nodeRoleArn? : str
    region? : str
    releaseVersion? : str
    remoteAccess? : [NodegroupstatusatproviderRemoteaccessitem]
    resources? : [NodegroupstatusatproviderResourcesitem]
    scalingConfig? : [NodegroupstatusatproviderScalingconfigitem]
    status? : str
    subnetIds? : [str]
    tags? : {str:str}
    tagsAll? : {str:str}
    taint? : [NodegroupstatusatproviderTaintitem]
    updateConfig? : [NodegroupstatusatproviderUpdateconfigitem]
    version? : str

schema NodegroupstatusatproviderLaunchtemplateitem:
    """
    NodegroupstatusatproviderLaunchtemplateitem schema.

    Attributes
    ----------
    id : str, optional
        Identifier of the EC2 Launch Template. Conflicts with name.
    name : str, optional
        Name of the EC2 Launch Template. Conflicts with id.
    version : str, optional
        EC2 Launch Template version number.
    """
    id? : str
    name? : str
    version? : str

schema NodegroupstatusatproviderNoderepairconfigitem:
    """
    NodegroupstatusatproviderNoderepairconfigitem schema.

    Attributes
    ----------
    enabled : bool, optional
        Specifies whether to enable node auto repair for the node group. Node auto repair is disabled by default.
    """
    enabled? : bool

schema NodegroupstatusatproviderRemoteaccessitem:
    """
    NodegroupstatusatproviderRemoteaccessitem schema.

    Attributes
    ----------
    ec2SshKey : str, optional
        EC2 Key Pair name that provides access for remote communication with the worker nodes in the EKS Node Group. If you specify this configuration, but do not specify source_security_group_ids when you create an EKS Node Group, either port 3389 for Windows, or port 22 for all other operating systems is opened on the worker nodes to the Internet (0.0.0.0/0). For Windows nodes, this will allow you to use RDP, for all others this allows you to SSH into the worker nodes.
    sourceSecurityGroupIds : [str], optional
        Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes. If you specify ec2_ssh_key, but do not specify this configuration when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0).
    """
    ec2SshKey? : str
    sourceSecurityGroupIds? : [str]

schema NodegroupstatusatproviderResourcesitem:
    """
    NodegroupstatusatproviderResourcesitem schema.

    Attributes
    ----------
    autoscalingGroups : [NodegroupstatusatproviderresourcesitemAutoscalinggroupsitem], optional
        List of objects containing information about AutoScaling Groups.
    remoteAccessSecurityGroupId : str, optional
        Identifier of the remote access EC2 Security Group.
    """
    autoscalingGroups? : [NodegroupstatusatproviderresourcesitemAutoscalinggroupsitem]
    remoteAccessSecurityGroupId? : str

schema NodegroupstatusatproviderresourcesitemAutoscalinggroupsitem:
    """
    NodegroupstatusatproviderresourcesitemAutoscalinggroupsitem schema.

    Attributes
    ----------
    name : str, optional
        Name of the AutoScaling Group.
    """
    name? : str

schema NodegroupstatusatproviderScalingconfigitem:
    """
    NodegroupstatusatproviderScalingconfigitem schema.

    Attributes
    ----------
    desiredSize : float, optional
        Desired number of worker nodes.
    maxSize : float, optional
        Maximum number of worker nodes.
    minSize : float, optional
        Minimum number of worker nodes.
    """
    desiredSize? : float
    maxSize? : float
    minSize? : float

schema NodegroupstatusatproviderTaintitem:
    """
    NodegroupstatusatproviderTaintitem schema.

    Attributes
    ----------
    effect : str, optional
        The effect of the taint. Valid values: NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE.
    key : str, optional
        The key of the taint. Maximum length of 63.
    value : str, optional
        The value of the taint. Maximum length of 63.
    """
    effect? : str
    key? : str
    value? : str

schema NodegroupstatusatproviderUpdateconfigitem:
    """
    NodegroupstatusatproviderUpdateconfigitem schema.

    Attributes
    ----------
    maxUnavailable : float, optional
        Desired max number of unavailable worker nodes during node group update.
    maxUnavailablePercentage : float, optional
        Desired max percentage of unavailable worker nodes during node group update.
    """
    maxUnavailable? : float
    maxUnavailablePercentage? : float

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
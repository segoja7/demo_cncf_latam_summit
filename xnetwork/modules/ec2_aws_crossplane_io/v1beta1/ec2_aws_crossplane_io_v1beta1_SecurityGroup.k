"""
This file was generated automatically and is intended to be a KCL Schema
schema representation of a Kubernetes CRD.

It is based on the provided OpenAPI v2 JSON schema.

DO NOT EDIT MANUALLY.
"""

schema Securitygroup:
    """
    A SecurityGroup is a managed resource that represents an AWS VPC Security
    Group.

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
    spec : SecuritygroupSpec, required
        A SecurityGroupSpec defines the desired state of a SecurityGroup.
    status : SecuritygroupStatus, optional
        A SecurityGroupStatus represents the observed state of a SecurityGroup.
    """
    apiVersion : str = "ec2.aws.crossplane.io/v1beta1"
    kind : str = "SecurityGroup"
    metadata? : any
    spec : SecuritygroupSpec
    status? : SecuritygroupStatus

schema SecuritygroupSpec:
    """
    A SecurityGroupSpec defines the desired state of a SecurityGroup.

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
    forProvider : SecuritygroupspecForprovider, required
        SecurityGroupParameters define the desired state of an AWS VPC Security
        Group.
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
    providerConfigRef : SecuritygroupspecProviderconfigref, optional
        ProviderConfigReference specifies how the provider that will be used to
        create, observe, update, and delete this managed resource should be
        configured.
    publishConnectionDetailsTo : SecuritygroupspecPublishconnectiondetailsto, optional
        PublishConnectionDetailsTo specifies the connection secret config which
        contains a name, metadata and a reference to secret store config to
        which any connection details for this managed resource should be written.
        Connection details frequently include the endpoint, username,
        and password required to connect to the managed resource.
    writeConnectionSecretToRef : SecuritygroupspecWriteconnectionsecrettoref, optional
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
    forProvider : SecuritygroupspecForprovider
    managementPolicies? : ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    providerConfigRef? : SecuritygroupspecProviderconfigref
    publishConnectionDetailsTo? : SecuritygroupspecPublishconnectiondetailsto
    writeConnectionSecretToRef? : SecuritygroupspecWriteconnectionsecrettoref

schema SecuritygroupspecForprovider:
    """
    SecurityGroupParameters define the desired state of an AWS VPC Security
    Group.

    Attributes
    ----------
    description : str, required
        A description of the security group.
    egress : [SecuritygroupspecforproviderEgressitem], optional
        [EC2-VPC] One or more outbound rules associated with the security group.
    groupName : str, required
        The name of the security group.
    ignoreEgress : bool, optional
        Dont manage the egress settings for the created resource
    ignoreIngress : bool, optional
        Dont manage the ingress settings for the created resource
    ingress : [SecuritygroupspecforproviderIngressitem], optional
        One or more inbound rules associated with the security group.
    region : str, required
        Region is the region you'd like your SecurityGroup to be created in.
    tags : [SecuritygroupspecforproviderTagsitem], optional
        Tags represents to current ec2 tags.
    vpcId : str, optional
        VPCID is the ID of the VPC.
    vpcIdRef : SecuritygroupspecforproviderVpcidref, optional
        VPCIDRef references a VPC to and retrieves its vpcId
    vpcIdSelector : SecuritygroupspecforproviderVpcidselector, optional
        VPCIDSelector selects a reference to a VPC to and retrieves its vpcId
    """
    description : str
    egress? : [SecuritygroupspecforproviderEgressitem]
    groupName : str
    ignoreEgress? : bool
    ignoreIngress? : bool
    ingress? : [SecuritygroupspecforproviderIngressitem]
    region : str
    tags? : [SecuritygroupspecforproviderTagsitem]
    vpcId? : str
    vpcIdRef? : SecuritygroupspecforproviderVpcidref
    vpcIdSelector? : SecuritygroupspecforproviderVpcidselector

schema SecuritygroupspecforproviderEgressitem:
    """
    IPPermission Describes a set of permissions for a security group rule.

    Attributes
    ----------
    fromPort : int, optional
        The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6
        type number. A value of -1 indicates all ICMP/ICMPv6 types. If you specify
        all ICMP/ICMPv6 types, you must specify all codes.
    ipProtocol : str, required
        The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers
        (http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).

        [VPC only] Use -1 to specify all protocols. When authorizing security group
        rules, specifying -1 or a protocol number other than tcp, udp, icmp, or icmpv6
        allows traffic on all ports, regardless of any port range you specify. For
        tcp, udp, and icmp, you must specify a port range. For icmpv6, the port range
        is optional; if you omit the port range, traffic for all types and codes
        is allowed.
    ipRanges : [SecuritygroupspecforprovideregressitemIprangesitem], optional
        The IPv4 ranges.
    ipv6Ranges : [SecuritygroupspecforprovideregressitemIpv6Rangesitem], optional
        The IPv6 ranges.

        [VPC only]
    prefixListIds : [SecuritygroupspecforprovideregressitemPrefixlistidsitem], optional
        PrefixListIDs for an AWS service. With outbound rules, this
        is the AWS service to access through a VPC endpoint from instances associated
        with the security group.

        [VPC only]
    toPort : int, optional
        The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
        A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6
        types, you must specify all codes.
    userIdGroupPairs : [SecuritygroupspecforprovideregressitemUseridgrouppairsitem], optional
        UserIDGroupPairs are the source security group and AWS account ID pairs.
        It contains one or more accounts and security groups to allow flows from
        security groups of other accounts.
    """
    fromPort? : int
    ipProtocol : str
    ipRanges? : [SecuritygroupspecforprovideregressitemIprangesitem]
    ipv6Ranges? : [SecuritygroupspecforprovideregressitemIpv6Rangesitem]
    prefixListIds? : [SecuritygroupspecforprovideregressitemPrefixlistidsitem]
    toPort? : int
    userIdGroupPairs? : [SecuritygroupspecforprovideregressitemUseridgrouppairsitem]

schema SecuritygroupspecforprovideregressitemIprangesitem:
    """
    IPRange describes an IPv4 range.

    Attributes
    ----------
    cidrIp : str, required
        The IPv4 CIDR range. You can either specify a CIDR range or a source security
        group, not both. To specify a single IPv4 address, use the /32 prefix length.
    description : str, optional
        A description for the security group rule that references this IPv4 address
        range.

        Constraints: Up to 255 characters in length. Allowed characters are a-z,
        A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*
    """
    cidrIp : str
    description? : str

schema SecuritygroupspecforprovideregressitemIpv6Rangesitem:
    """
    IPv6Range describes an IPv6 range.

    Attributes
    ----------
    cidrIPv6 : str, required
        The IPv6 CIDR range. You can either specify a CIDR range or a source security
        group, not both. To specify a single IPv6 address, use the /128 prefix length.
    description : str, optional
        A description for the security group rule that references this IPv6 address
        range.

        Constraints: Up to 255 characters in length. Allowed characters are a-z,
        A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*
    """
    cidrIPv6 : str
    description? : str

schema SecuritygroupspecforprovideregressitemPrefixlistidsitem:
    """
    PrefixListID describes a prefix list ID.

    Attributes
    ----------
    description : str, optional
        A description for the security group rule that references this prefix list
        ID.

        Constraints: Up to 255 characters in length. Allowed characters are a-z,
        A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*
    prefixListId : str, required
        The ID of the prefix.
    """
    description? : str
    prefixListId : str

schema SecuritygroupspecforprovideregressitemUseridgrouppairsitem:
    """
    UserIDGroupPair describes a security group and AWS account ID pair.

    Attributes
    ----------
    description : str, optional
        A description for the security group rule that references this user ID group
        pair.

        Constraints: Up to 255 characters in length. Allowed characters are a-z,
        A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*
    groupId : str, optional
        The ID of the security group.
    groupIdRef : SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidref, optional
        GroupIDRef reference a security group to retrieve its GroupID
    groupIdSelector : SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidselector, optional
        GroupIDSelector selects reference to a security group to retrieve its GroupID
    groupName : str, optional
        The name of the security group. In a request, use this parameter for a security
        group in EC2-Classic or a default VPC only. For a security group in a nondefault
        VPC, use the security group ID.

        For a referenced security group in another VPC, this value is not returned
        if the referenced security group is deleted.
    userId : str, optional
        The ID of an AWS account.

        For a referenced security group in another VPC, the account ID of the referenced
        security group is returned in the response. If the referenced security group
        is deleted, this value is not returned.

        [EC2-Classic] Required when adding or removing rules that reference a security
        group in another AWS account.
    vpcId : str, optional
        The ID of the VPC for the referenced security group, if applicable.
    vpcIdRef : SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidref, optional
        VPCIDRef reference a VPC to retrieve its vpcId
    vpcIdSelector : SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidselector, optional
        VPCIDSelector selects reference to a VPC to retrieve its vpcId
    vpcPeeringConnectionId : str, optional
        The ID of the VPC peering connection, if applicable.
    """
    description? : str
    groupId? : str
    groupIdRef? : SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidref
    groupIdSelector? : SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidselector
    groupName? : str
    userId? : str
    vpcId? : str
    vpcIdRef? : SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidref
    vpcIdSelector? : SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidselector
    vpcPeeringConnectionId? : str

schema SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidref:
    """
    GroupIDRef reference a security group to retrieve its GroupID

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidrefPolicy

schema SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidrefPolicy:
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

schema SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidselector:
    """
    GroupIDSelector selects reference to a security group to retrieve its GroupID

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidselectorPolicy

schema SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidselectorPolicy:
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

schema SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidref:
    """
    VPCIDRef reference a VPC to retrieve its vpcId

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidrefPolicy

schema SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidrefPolicy:
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

schema SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidselector:
    """
    VPCIDSelector selects reference to a VPC to retrieve its vpcId

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidselectorPolicy

schema SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidselectorPolicy:
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

schema SecuritygroupspecforproviderIngressitem:
    """
    IPPermission Describes a set of permissions for a security group rule.

    Attributes
    ----------
    fromPort : int, optional
        The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6
        type number. A value of -1 indicates all ICMP/ICMPv6 types. If you specify
        all ICMP/ICMPv6 types, you must specify all codes.
    ipProtocol : str, required
        The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers
        (http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).

        [VPC only] Use -1 to specify all protocols. When authorizing security group
        rules, specifying -1 or a protocol number other than tcp, udp, icmp, or icmpv6
        allows traffic on all ports, regardless of any port range you specify. For
        tcp, udp, and icmp, you must specify a port range. For icmpv6, the port range
        is optional; if you omit the port range, traffic for all types and codes
        is allowed.
    ipRanges : [SecuritygroupspecforprovideringressitemIprangesitem], optional
        The IPv4 ranges.
    ipv6Ranges : [SecuritygroupspecforprovideringressitemIpv6Rangesitem], optional
        The IPv6 ranges.

        [VPC only]
    prefixListIds : [SecuritygroupspecforprovideringressitemPrefixlistidsitem], optional
        PrefixListIDs for an AWS service. With outbound rules, this
        is the AWS service to access through a VPC endpoint from instances associated
        with the security group.

        [VPC only]
    toPort : int, optional
        The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
        A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6
        types, you must specify all codes.
    userIdGroupPairs : [SecuritygroupspecforprovideringressitemUseridgrouppairsitem], optional
        UserIDGroupPairs are the source security group and AWS account ID pairs.
        It contains one or more accounts and security groups to allow flows from
        security groups of other accounts.
    """
    fromPort? : int
    ipProtocol : str
    ipRanges? : [SecuritygroupspecforprovideringressitemIprangesitem]
    ipv6Ranges? : [SecuritygroupspecforprovideringressitemIpv6Rangesitem]
    prefixListIds? : [SecuritygroupspecforprovideringressitemPrefixlistidsitem]
    toPort? : int
    userIdGroupPairs? : [SecuritygroupspecforprovideringressitemUseridgrouppairsitem]

schema SecuritygroupspecforprovideringressitemIprangesitem:
    """
    IPRange describes an IPv4 range.

    Attributes
    ----------
    cidrIp : str, required
        The IPv4 CIDR range. You can either specify a CIDR range or a source security
        group, not both. To specify a single IPv4 address, use the /32 prefix length.
    description : str, optional
        A description for the security group rule that references this IPv4 address
        range.

        Constraints: Up to 255 characters in length. Allowed characters are a-z,
        A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*
    """
    cidrIp : str
    description? : str

schema SecuritygroupspecforprovideringressitemIpv6Rangesitem:
    """
    IPv6Range describes an IPv6 range.

    Attributes
    ----------
    cidrIPv6 : str, required
        The IPv6 CIDR range. You can either specify a CIDR range or a source security
        group, not both. To specify a single IPv6 address, use the /128 prefix length.
    description : str, optional
        A description for the security group rule that references this IPv6 address
        range.

        Constraints: Up to 255 characters in length. Allowed characters are a-z,
        A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*
    """
    cidrIPv6 : str
    description? : str

schema SecuritygroupspecforprovideringressitemPrefixlistidsitem:
    """
    PrefixListID describes a prefix list ID.

    Attributes
    ----------
    description : str, optional
        A description for the security group rule that references this prefix list
        ID.

        Constraints: Up to 255 characters in length. Allowed characters are a-z,
        A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*
    prefixListId : str, required
        The ID of the prefix.
    """
    description? : str
    prefixListId : str

schema SecuritygroupspecforprovideringressitemUseridgrouppairsitem:
    """
    UserIDGroupPair describes a security group and AWS account ID pair.

    Attributes
    ----------
    description : str, optional
        A description for the security group rule that references this user ID group
        pair.

        Constraints: Up to 255 characters in length. Allowed characters are a-z,
        A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*
    groupId : str, optional
        The ID of the security group.
    groupIdRef : SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidref, optional
        GroupIDRef reference a security group to retrieve its GroupID
    groupIdSelector : SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidselector, optional
        GroupIDSelector selects reference to a security group to retrieve its GroupID
    groupName : str, optional
        The name of the security group. In a request, use this parameter for a security
        group in EC2-Classic or a default VPC only. For a security group in a nondefault
        VPC, use the security group ID.

        For a referenced security group in another VPC, this value is not returned
        if the referenced security group is deleted.
    userId : str, optional
        The ID of an AWS account.

        For a referenced security group in another VPC, the account ID of the referenced
        security group is returned in the response. If the referenced security group
        is deleted, this value is not returned.

        [EC2-Classic] Required when adding or removing rules that reference a security
        group in another AWS account.
    vpcId : str, optional
        The ID of the VPC for the referenced security group, if applicable.
    vpcIdRef : SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidref, optional
        VPCIDRef reference a VPC to retrieve its vpcId
    vpcIdSelector : SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidselector, optional
        VPCIDSelector selects reference to a VPC to retrieve its vpcId
    vpcPeeringConnectionId : str, optional
        The ID of the VPC peering connection, if applicable.
    """
    description? : str
    groupId? : str
    groupIdRef? : SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidref
    groupIdSelector? : SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidselector
    groupName? : str
    userId? : str
    vpcId? : str
    vpcIdRef? : SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidref
    vpcIdSelector? : SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidselector
    vpcPeeringConnectionId? : str

schema SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidref:
    """
    GroupIDRef reference a security group to retrieve its GroupID

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidrefPolicy

schema SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidrefPolicy:
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

schema SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidselector:
    """
    GroupIDSelector selects reference to a security group to retrieve its GroupID

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidselectorPolicy

schema SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidselectorPolicy:
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

schema SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidref:
    """
    VPCIDRef reference a VPC to retrieve its vpcId

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidrefPolicy

schema SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidrefPolicy:
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

schema SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidselector:
    """
    VPCIDSelector selects reference to a VPC to retrieve its vpcId

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidselectorPolicy

schema SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidselectorPolicy:
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

schema SecuritygroupspecforproviderTagsitem:
    """
    Tag defines a tag

    Attributes
    ----------
    key : str, required
        Key is the name of the tag.
    value : str, required
        Value is the value of the tag.
    """
    key : str
    value : str

schema SecuritygroupspecforproviderVpcidref:
    """
    VPCIDRef references a VPC to and retrieves its vpcId

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygroupspecforprovidervpcidrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygroupspecforprovidervpcidrefPolicy

schema SecuritygroupspecforprovidervpcidrefPolicy:
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

schema SecuritygroupspecforproviderVpcidselector:
    """
    VPCIDSelector selects a reference to a VPC to and retrieves its vpcId

    Attributes
    ----------
    matchControllerRef : bool, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecuritygroupspecforprovidervpcidselectorPolicy, optional
        Policies for selection.
    """
    matchControllerRef? : bool
    matchLabels? : {str:str}
    policy? : SecuritygroupspecforprovidervpcidselectorPolicy

schema SecuritygroupspecforprovidervpcidselectorPolicy:
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

schema SecuritygroupspecProviderconfigref:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygroupspecproviderconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygroupspecproviderconfigrefPolicy

schema SecuritygroupspecproviderconfigrefPolicy:
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

schema SecuritygroupspecPublishconnectiondetailsto:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : SecuritygroupspecpublishconnectiondetailstoConfigref, optional
        SecretStoreConfigRef specifies which secret store config should be used
        for this ConnectionSecret.
    metadata : SecuritygroupspecpublishconnectiondetailstoMetadata, optional
        Metadata is the metadata for connection secret.
    name : str, required
        Name is the name of the connection secret.
    """
    configRef? : SecuritygroupspecpublishconnectiondetailstoConfigref
    metadata? : SecuritygroupspecpublishconnectiondetailstoMetadata
    name : str

schema SecuritygroupspecpublishconnectiondetailstoConfigref:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, required
        Name of the referenced object.
    policy : SecuritygroupspecpublishconnectiondetailstoconfigrefPolicy, optional
        Policies for referencing.
    """
    name : str
    policy? : SecuritygroupspecpublishconnectiondetailstoconfigrefPolicy

schema SecuritygroupspecpublishconnectiondetailstoconfigrefPolicy:
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

schema SecuritygroupspecpublishconnectiondetailstoMetadata:
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

schema SecuritygroupspecWriteconnectionsecrettoref:
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

schema SecuritygroupStatus:
    """
    A SecurityGroupStatus represents the observed state of a SecurityGroup.

    Attributes
    ----------
    atProvider : SecuritygroupstatusAtprovider, optional
        SecurityGroupObservation keeps the state for the external resource
    conditions : [SecuritygroupstatusConditionsitem], optional
        Conditions of the resource.
    observedGeneration : int, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """
    atProvider? : SecuritygroupstatusAtprovider
    conditions? : [SecuritygroupstatusConditionsitem]
    observedGeneration? : int

schema SecuritygroupstatusAtprovider:
    """
    SecurityGroupObservation keeps the state for the external resource

    Attributes
    ----------
    egressRules : [SecuritygroupstatusatproviderEgressrulesitem], optional
        EgressRules of the observed SecurityGroup.
    ingressRules : [SecuritygroupstatusatproviderIngressrulesitem], optional
        IngressRules of the observed SecurityGroup.
    ownerId : str, required
        The AWS account ID of the owner of the security group.
    securityGroupID : str, required
        SecurityGroupID is the ID of the SecurityGroup.
    """
    egressRules? : [SecuritygroupstatusatproviderEgressrulesitem]
    ingressRules? : [SecuritygroupstatusatproviderIngressrulesitem]
    ownerId : str
    securityGroupID : str

schema SecuritygroupstatusatproviderEgressrulesitem:
    """
    SecuritygroupstatusatproviderEgressrulesitem schema.

    Attributes
    ----------
    cidrIpv4 : str, optional
        CidrIpv4 range.
    cidrIpv6 : str, optional
        CidrIpv6 range.
    description : str, optional
        Description of this rule.
    fromPort : int, optional
        The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type. A
        value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6
        types, you must specify all codes.
    id : str, optional
        ID of the security group rule.
    ipProtocol : str, optional
        The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers
        (http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). Use
        -1 to specify all protocols.
    prefixListId : str, optional
        The ID of the prefix list.
    referencedGroupInfo : SecuritygroupstatusatprovideregressrulesitemReferencedgroupinfo, optional
        Describes the security group that is referenced in the rule.
    toPort : int, optional
        The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A
        value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6
        types, you must specify all codes.
    """
    cidrIpv4? : str
    cidrIpv6? : str
    description? : str
    fromPort? : int
    id? : str
    ipProtocol? : str
    prefixListId? : str
    referencedGroupInfo? : SecuritygroupstatusatprovideregressrulesitemReferencedgroupinfo
    toPort? : int

schema SecuritygroupstatusatprovideregressrulesitemReferencedgroupinfo:
    """
    Describes the security group that is referenced in the rule.

    Attributes
    ----------
    groupId : str, optional
        The ID of the security group.
    peeringStatus : str, optional
        The status of a VPC peering connection, if applicable.
    userId : str, optional
        The Amazon Web Services account ID.
    vpcId : str, optional
        The ID of the VPC.
    vpcPeeringConnectionId : str, optional
        The ID of the VPC peering connection.
    """
    groupId? : str
    peeringStatus? : str
    userId? : str
    vpcId? : str
    vpcPeeringConnectionId? : str

schema SecuritygroupstatusatproviderIngressrulesitem:
    """
    SecuritygroupstatusatproviderIngressrulesitem schema.

    Attributes
    ----------
    cidrIpv4 : str, optional
        CidrIpv4 range.
    cidrIpv6 : str, optional
        CidrIpv6 range.
    description : str, optional
        Description of this rule.
    fromPort : int, optional
        The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type. A
        value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6
        types, you must specify all codes.
    id : str, optional
        ID of the security group rule.
    ipProtocol : str, optional
        The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers
        (http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). Use
        -1 to specify all protocols.
    prefixListId : str, optional
        The ID of the prefix list.
    referencedGroupInfo : SecuritygroupstatusatprovideringressrulesitemReferencedgroupinfo, optional
        Describes the security group that is referenced in the rule.
    toPort : int, optional
        The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A
        value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6
        types, you must specify all codes.
    """
    cidrIpv4? : str
    cidrIpv6? : str
    description? : str
    fromPort? : int
    id? : str
    ipProtocol? : str
    prefixListId? : str
    referencedGroupInfo? : SecuritygroupstatusatprovideringressrulesitemReferencedgroupinfo
    toPort? : int

schema SecuritygroupstatusatprovideringressrulesitemReferencedgroupinfo:
    """
    Describes the security group that is referenced in the rule.

    Attributes
    ----------
    groupId : str, optional
        The ID of the security group.
    peeringStatus : str, optional
        The status of a VPC peering connection, if applicable.
    userId : str, optional
        The Amazon Web Services account ID.
    vpcId : str, optional
        The ID of the VPC.
    vpcPeeringConnectionId : str, optional
        The ID of the VPC peering connection.
    """
    groupId? : str
    peeringStatus? : str
    userId? : str
    vpcId? : str
    vpcPeeringConnectionId? : str

schema SecuritygroupstatusConditionsitem:
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
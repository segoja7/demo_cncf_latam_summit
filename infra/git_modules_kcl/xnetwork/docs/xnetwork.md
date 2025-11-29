# xnetwork

## Index

- modules
  - cloudwatchlogs_aws_crossplane_io
    - v1alpha1
      - [Loggroup](#loggroup)
      - [LoggroupSpec](#loggroupspec)
      - [LoggroupStatus](#loggroupstatus)
      - [LoggroupspecForprovider](#loggroupspecforprovider)
      - [LoggroupspecProviderconfigref](#loggroupspecproviderconfigref)
      - [LoggroupspecPublishconnectiondetailsto](#loggroupspecpublishconnectiondetailsto)
      - [LoggroupspecWriteconnectionsecrettoref](#loggroupspecwriteconnectionsecrettoref)
      - [LoggroupspecforproviderKmskeyidref](#loggroupspecforproviderkmskeyidref)
      - [LoggroupspecforproviderKmskeyidselector](#loggroupspecforproviderkmskeyidselector)
      - [LoggroupspecforproviderkmskeyidrefPolicy](#loggroupspecforproviderkmskeyidrefpolicy)
      - [LoggroupspecforproviderkmskeyidselectorPolicy](#loggroupspecforproviderkmskeyidselectorpolicy)
      - [LoggroupspecproviderconfigrefPolicy](#loggroupspecproviderconfigrefpolicy)
      - [LoggroupspecpublishconnectiondetailstoConfigref](#loggroupspecpublishconnectiondetailstoconfigref)
      - [LoggroupspecpublishconnectiondetailstoMetadata](#loggroupspecpublishconnectiondetailstometadata)
      - [LoggroupspecpublishconnectiondetailstoconfigrefPolicy](#loggroupspecpublishconnectiondetailstoconfigrefpolicy)
      - [LoggroupstatusAtprovider](#loggroupstatusatprovider)
      - [LoggroupstatusConditionsitem](#loggroupstatusconditionsitem)
  - ec2_aws_crossplane_io
    - v1alpha1
      - [Flowlog](#flowlog)
      - [FlowlogSpec](#flowlogspec)
      - [FlowlogStatus](#flowlogstatus)
      - [FlowlogspecForprovider](#flowlogspecforprovider)
      - [FlowlogspecProviderconfigref](#flowlogspecproviderconfigref)
      - [FlowlogspecPublishconnectiondetailsto](#flowlogspecpublishconnectiondetailsto)
      - [FlowlogspecWriteconnectionsecrettoref](#flowlogspecwriteconnectionsecrettoref)
      - [FlowlogspecforproviderCloudwatchlogdestinationref](#flowlogspecforprovidercloudwatchlogdestinationref)
      - [FlowlogspecforproviderCloudwatchlogdestinationselector](#flowlogspecforprovidercloudwatchlogdestinationselector)
      - [FlowlogspecforproviderDeliverlogspermissionarnref](#flowlogspecforproviderdeliverlogspermissionarnref)
      - [FlowlogspecforproviderDeliverlogspermissionarnselector](#flowlogspecforproviderdeliverlogspermissionarnselector)
      - [FlowlogspecforproviderDestinationoptions](#flowlogspecforproviderdestinationoptions)
      - [FlowlogspecforproviderS3Bucketlogdestinationref](#flowlogspecforproviders3bucketlogdestinationref)
      - [FlowlogspecforproviderS3Bucketlogdestinationselector](#flowlogspecforproviders3bucketlogdestinationselector)
      - [FlowlogspecforproviderSubnetidref](#flowlogspecforprovidersubnetidref)
      - [FlowlogspecforproviderSubnetidselector](#flowlogspecforprovidersubnetidselector)
      - [FlowlogspecforproviderTagsitem](#flowlogspecforprovidertagsitem)
      - [FlowlogspecforproviderTransitgatewayattachmentidref](#flowlogspecforprovidertransitgatewayattachmentidref)
      - [FlowlogspecforproviderTransitgatewayattachmentidselector](#flowlogspecforprovidertransitgatewayattachmentidselector)
      - [FlowlogspecforproviderTransitgatewayidref](#flowlogspecforprovidertransitgatewayidref)
      - [FlowlogspecforproviderTransitgatewayidselector](#flowlogspecforprovidertransitgatewayidselector)
      - [FlowlogspecforproviderVpcidref](#flowlogspecforprovidervpcidref)
      - [FlowlogspecforproviderVpcidselector](#flowlogspecforprovidervpcidselector)
      - [FlowlogspecforprovidercloudwatchlogdestinationrefPolicy](#flowlogspecforprovidercloudwatchlogdestinationrefpolicy)
      - [FlowlogspecforprovidercloudwatchlogdestinationselectorPolicy](#flowlogspecforprovidercloudwatchlogdestinationselectorpolicy)
      - [FlowlogspecforproviderdeliverlogspermissionarnrefPolicy](#flowlogspecforproviderdeliverlogspermissionarnrefpolicy)
      - [FlowlogspecforproviderdeliverlogspermissionarnselectorPolicy](#flowlogspecforproviderdeliverlogspermissionarnselectorpolicy)
      - [Flowlogspecforproviders3BucketlogdestinationrefPolicy](#flowlogspecforproviders3bucketlogdestinationrefpolicy)
      - [Flowlogspecforproviders3BucketlogdestinationselectorPolicy](#flowlogspecforproviders3bucketlogdestinationselectorpolicy)
      - [FlowlogspecforprovidersubnetidrefPolicy](#flowlogspecforprovidersubnetidrefpolicy)
      - [FlowlogspecforprovidersubnetidselectorPolicy](#flowlogspecforprovidersubnetidselectorpolicy)
      - [FlowlogspecforprovidertransitgatewayattachmentidrefPolicy](#flowlogspecforprovidertransitgatewayattachmentidrefpolicy)
      - [FlowlogspecforprovidertransitgatewayattachmentidselectorPolicy](#flowlogspecforprovidertransitgatewayattachmentidselectorpolicy)
      - [FlowlogspecforprovidertransitgatewayidrefPolicy](#flowlogspecforprovidertransitgatewayidrefpolicy)
      - [FlowlogspecforprovidertransitgatewayidselectorPolicy](#flowlogspecforprovidertransitgatewayidselectorpolicy)
      - [FlowlogspecforprovidervpcidrefPolicy](#flowlogspecforprovidervpcidrefpolicy)
      - [FlowlogspecforprovidervpcidselectorPolicy](#flowlogspecforprovidervpcidselectorpolicy)
      - [FlowlogspecproviderconfigrefPolicy](#flowlogspecproviderconfigrefpolicy)
      - [FlowlogspecpublishconnectiondetailstoConfigref](#flowlogspecpublishconnectiondetailstoconfigref)
      - [FlowlogspecpublishconnectiondetailstoMetadata](#flowlogspecpublishconnectiondetailstometadata)
      - [FlowlogspecpublishconnectiondetailstoconfigrefPolicy](#flowlogspecpublishconnectiondetailstoconfigrefpolicy)
      - [FlowlogstatusAtprovider](#flowlogstatusatprovider)
      - [FlowlogstatusConditionsitem](#flowlogstatusconditionsitem)
      - [FlowlogstatusatproviderTagsitem](#flowlogstatusatprovidertagsitem)
      - [Vpcendpoint](#vpcendpoint)
      - [VpcendpointSpec](#vpcendpointspec)
      - [VpcendpointStatus](#vpcendpointstatus)
      - [VpcendpointspecForprovider](#vpcendpointspecforprovider)
      - [VpcendpointspecProviderconfigref](#vpcendpointspecproviderconfigref)
      - [VpcendpointspecPublishconnectiondetailsto](#vpcendpointspecpublishconnectiondetailsto)
      - [VpcendpointspecWriteconnectionsecrettoref](#vpcendpointspecwriteconnectionsecrettoref)
      - [VpcendpointspecforproviderDnsoptions](#vpcendpointspecforproviderdnsoptions)
      - [VpcendpointspecforproviderRoutetableidrefsitem](#vpcendpointspecforproviderroutetableidrefsitem)
      - [VpcendpointspecforproviderRoutetableidselector](#vpcendpointspecforproviderroutetableidselector)
      - [VpcendpointspecforproviderSecuritygroupidrefsitem](#vpcendpointspecforprovidersecuritygroupidrefsitem)
      - [VpcendpointspecforproviderSecuritygroupidselector](#vpcendpointspecforprovidersecuritygroupidselector)
      - [VpcendpointspecforproviderSubnetconfigurationsitem](#vpcendpointspecforprovidersubnetconfigurationsitem)
      - [VpcendpointspecforproviderSubnetidrefsitem](#vpcendpointspecforprovidersubnetidrefsitem)
      - [VpcendpointspecforproviderSubnetidselector](#vpcendpointspecforprovidersubnetidselector)
      - [VpcendpointspecforproviderTagspecificationsitem](#vpcendpointspecforprovidertagspecificationsitem)
      - [VpcendpointspecforproviderVpcidref](#vpcendpointspecforprovidervpcidref)
      - [VpcendpointspecforproviderVpcidselector](#vpcendpointspecforprovidervpcidselector)
      - [VpcendpointspecforproviderroutetableidrefsitemPolicy](#vpcendpointspecforproviderroutetableidrefsitempolicy)
      - [VpcendpointspecforproviderroutetableidselectorPolicy](#vpcendpointspecforproviderroutetableidselectorpolicy)
      - [VpcendpointspecforprovidersecuritygroupidrefsitemPolicy](#vpcendpointspecforprovidersecuritygroupidrefsitempolicy)
      - [VpcendpointspecforprovidersecuritygroupidselectorPolicy](#vpcendpointspecforprovidersecuritygroupidselectorpolicy)
      - [VpcendpointspecforprovidersubnetidrefsitemPolicy](#vpcendpointspecforprovidersubnetidrefsitempolicy)
      - [VpcendpointspecforprovidersubnetidselectorPolicy](#vpcendpointspecforprovidersubnetidselectorpolicy)
      - [VpcendpointspecforprovidertagspecificationsitemTagsitem](#vpcendpointspecforprovidertagspecificationsitemtagsitem)
      - [VpcendpointspecforprovidervpcidrefPolicy](#vpcendpointspecforprovidervpcidrefpolicy)
      - [VpcendpointspecforprovidervpcidselectorPolicy](#vpcendpointspecforprovidervpcidselectorpolicy)
      - [VpcendpointspecproviderconfigrefPolicy](#vpcendpointspecproviderconfigrefpolicy)
      - [VpcendpointspecpublishconnectiondetailstoConfigref](#vpcendpointspecpublishconnectiondetailstoconfigref)
      - [VpcendpointspecpublishconnectiondetailstoMetadata](#vpcendpointspecpublishconnectiondetailstometadata)
      - [VpcendpointspecpublishconnectiondetailstoconfigrefPolicy](#vpcendpointspecpublishconnectiondetailstoconfigrefpolicy)
      - [VpcendpointstatusAtprovider](#vpcendpointstatusatprovider)
      - [VpcendpointstatusConditionsitem](#vpcendpointstatusconditionsitem)
      - [VpcendpointstatusatproviderDnsentriesitem](#vpcendpointstatusatproviderdnsentriesitem)
      - [VpcendpointstatusatproviderGroupsitem](#vpcendpointstatusatprovidergroupsitem)
      - [VpcendpointstatusatproviderLasterror](#vpcendpointstatusatproviderlasterror)
      - [VpcendpointstatusatproviderTagsitem](#vpcendpointstatusatprovidertagsitem)
    - v1beta1
      - [Address](#address)
      - [AddressSpec](#addressspec)
      - [AddressStatus](#addressstatus)
      - [AddressspecForprovider](#addressspecforprovider)
      - [AddressspecProviderconfigref](#addressspecproviderconfigref)
      - [AddressspecPublishconnectiondetailsto](#addressspecpublishconnectiondetailsto)
      - [AddressspecWriteconnectionsecrettoref](#addressspecwriteconnectionsecrettoref)
      - [AddressspecforproviderTagsitem](#addressspecforprovidertagsitem)
      - [AddressspecproviderconfigrefPolicy](#addressspecproviderconfigrefpolicy)
      - [AddressspecpublishconnectiondetailstoConfigref](#addressspecpublishconnectiondetailstoconfigref)
      - [AddressspecpublishconnectiondetailstoMetadata](#addressspecpublishconnectiondetailstometadata)
      - [AddressspecpublishconnectiondetailstoconfigrefPolicy](#addressspecpublishconnectiondetailstoconfigrefpolicy)
      - [AddressstatusAtprovider](#addressstatusatprovider)
      - [AddressstatusConditionsitem](#addressstatusconditionsitem)
      - [Internetgateway](#internetgateway)
      - [InternetgatewaySpec](#internetgatewayspec)
      - [InternetgatewayStatus](#internetgatewaystatus)
      - [InternetgatewayspecForprovider](#internetgatewayspecforprovider)
      - [InternetgatewayspecProviderconfigref](#internetgatewayspecproviderconfigref)
      - [InternetgatewayspecPublishconnectiondetailsto](#internetgatewayspecpublishconnectiondetailsto)
      - [InternetgatewayspecWriteconnectionsecrettoref](#internetgatewayspecwriteconnectionsecrettoref)
      - [InternetgatewayspecforproviderTagsitem](#internetgatewayspecforprovidertagsitem)
      - [InternetgatewayspecforproviderVpcidref](#internetgatewayspecforprovidervpcidref)
      - [InternetgatewayspecforproviderVpcidselector](#internetgatewayspecforprovidervpcidselector)
      - [InternetgatewayspecforprovidervpcidrefPolicy](#internetgatewayspecforprovidervpcidrefpolicy)
      - [InternetgatewayspecforprovidervpcidselectorPolicy](#internetgatewayspecforprovidervpcidselectorpolicy)
      - [InternetgatewayspecproviderconfigrefPolicy](#internetgatewayspecproviderconfigrefpolicy)
      - [InternetgatewayspecpublishconnectiondetailstoConfigref](#internetgatewayspecpublishconnectiondetailstoconfigref)
      - [InternetgatewayspecpublishconnectiondetailstoMetadata](#internetgatewayspecpublishconnectiondetailstometadata)
      - [InternetgatewayspecpublishconnectiondetailstoconfigrefPolicy](#internetgatewayspecpublishconnectiondetailstoconfigrefpolicy)
      - [InternetgatewaystatusAtprovider](#internetgatewaystatusatprovider)
      - [InternetgatewaystatusConditionsitem](#internetgatewaystatusconditionsitem)
      - [InternetgatewaystatusatproviderAttachmentsitem](#internetgatewaystatusatproviderattachmentsitem)
      - [Natgateway](#natgateway)
      - [NatgatewaySpec](#natgatewayspec)
      - [NatgatewayStatus](#natgatewaystatus)
      - [NatgatewayspecForprovider](#natgatewayspecforprovider)
      - [NatgatewayspecProviderconfigref](#natgatewayspecproviderconfigref)
      - [NatgatewayspecPublishconnectiondetailsto](#natgatewayspecpublishconnectiondetailsto)
      - [NatgatewayspecWriteconnectionsecrettoref](#natgatewayspecwriteconnectionsecrettoref)
      - [NatgatewayspecforproviderAllocationidref](#natgatewayspecforproviderallocationidref)
      - [NatgatewayspecforproviderAllocationidselector](#natgatewayspecforproviderallocationidselector)
      - [NatgatewayspecforproviderSubnetidref](#natgatewayspecforprovidersubnetidref)
      - [NatgatewayspecforproviderSubnetidselector](#natgatewayspecforprovidersubnetidselector)
      - [NatgatewayspecforproviderTagsitem](#natgatewayspecforprovidertagsitem)
      - [NatgatewayspecforproviderallocationidrefPolicy](#natgatewayspecforproviderallocationidrefpolicy)
      - [NatgatewayspecforproviderallocationidselectorPolicy](#natgatewayspecforproviderallocationidselectorpolicy)
      - [NatgatewayspecforprovidersubnetidrefPolicy](#natgatewayspecforprovidersubnetidrefpolicy)
      - [NatgatewayspecforprovidersubnetidselectorPolicy](#natgatewayspecforprovidersubnetidselectorpolicy)
      - [NatgatewayspecproviderconfigrefPolicy](#natgatewayspecproviderconfigrefpolicy)
      - [NatgatewayspecpublishconnectiondetailstoConfigref](#natgatewayspecpublishconnectiondetailstoconfigref)
      - [NatgatewayspecpublishconnectiondetailstoMetadata](#natgatewayspecpublishconnectiondetailstometadata)
      - [NatgatewayspecpublishconnectiondetailstoconfigrefPolicy](#natgatewayspecpublishconnectiondetailstoconfigrefpolicy)
      - [NatgatewaystatusAtprovider](#natgatewaystatusatprovider)
      - [NatgatewaystatusConditionsitem](#natgatewaystatusconditionsitem)
      - [NatgatewaystatusatproviderNatgatewayaddressesitem](#natgatewaystatusatprovidernatgatewayaddressesitem)
      - [Routetable](#routetable)
      - [RoutetableSpec](#routetablespec)
      - [RoutetableStatus](#routetablestatus)
      - [RoutetablespecForprovider](#routetablespecforprovider)
      - [RoutetablespecProviderconfigref](#routetablespecproviderconfigref)
      - [RoutetablespecPublishconnectiondetailsto](#routetablespecpublishconnectiondetailsto)
      - [RoutetablespecWriteconnectionsecrettoref](#routetablespecwriteconnectionsecrettoref)
      - [RoutetablespecforproviderAssociationsitem](#routetablespecforproviderassociationsitem)
      - [RoutetablespecforproviderRoutesitem](#routetablespecforproviderroutesitem)
      - [RoutetablespecforproviderTagsitem](#routetablespecforprovidertagsitem)
      - [RoutetablespecforproviderVpcidref](#routetablespecforprovidervpcidref)
      - [RoutetablespecforproviderVpcidselector](#routetablespecforprovidervpcidselector)
      - [RoutetablespecforproviderassociationsitemSubnetidref](#routetablespecforproviderassociationsitemsubnetidref)
      - [RoutetablespecforproviderassociationsitemSubnetidselector](#routetablespecforproviderassociationsitemsubnetidselector)
      - [RoutetablespecforproviderassociationsitemsubnetidrefPolicy](#routetablespecforproviderassociationsitemsubnetidrefpolicy)
      - [RoutetablespecforproviderassociationsitemsubnetidselectorPolicy](#routetablespecforproviderassociationsitemsubnetidselectorpolicy)
      - [RoutetablespecforproviderroutesitemGatewayidref](#routetablespecforproviderroutesitemgatewayidref)
      - [RoutetablespecforproviderroutesitemGatewayidselector](#routetablespecforproviderroutesitemgatewayidselector)
      - [RoutetablespecforproviderroutesitemNatgatewayidref](#routetablespecforproviderroutesitemnatgatewayidref)
      - [RoutetablespecforproviderroutesitemNatgatewayidselector](#routetablespecforproviderroutesitemnatgatewayidselector)
      - [RoutetablespecforproviderroutesitemgatewayidrefPolicy](#routetablespecforproviderroutesitemgatewayidrefpolicy)
      - [RoutetablespecforproviderroutesitemgatewayidselectorPolicy](#routetablespecforproviderroutesitemgatewayidselectorpolicy)
      - [RoutetablespecforproviderroutesitemnatgatewayidrefPolicy](#routetablespecforproviderroutesitemnatgatewayidrefpolicy)
      - [RoutetablespecforproviderroutesitemnatgatewayidselectorPolicy](#routetablespecforproviderroutesitemnatgatewayidselectorpolicy)
      - [RoutetablespecforprovidervpcidrefPolicy](#routetablespecforprovidervpcidrefpolicy)
      - [RoutetablespecforprovidervpcidselectorPolicy](#routetablespecforprovidervpcidselectorpolicy)
      - [RoutetablespecproviderconfigrefPolicy](#routetablespecproviderconfigrefpolicy)
      - [RoutetablespecpublishconnectiondetailstoConfigref](#routetablespecpublishconnectiondetailstoconfigref)
      - [RoutetablespecpublishconnectiondetailstoMetadata](#routetablespecpublishconnectiondetailstometadata)
      - [RoutetablespecpublishconnectiondetailstoconfigrefPolicy](#routetablespecpublishconnectiondetailstoconfigrefpolicy)
      - [RoutetablestatusAtprovider](#routetablestatusatprovider)
      - [RoutetablestatusConditionsitem](#routetablestatusconditionsitem)
      - [RoutetablestatusatproviderAssociationsitem](#routetablestatusatproviderassociationsitem)
      - [RoutetablestatusatproviderRoutesitem](#routetablestatusatproviderroutesitem)
      - [Securitygroup](#securitygroup)
      - [SecuritygroupSpec](#securitygroupspec)
      - [SecuritygroupStatus](#securitygroupstatus)
      - [SecuritygroupspecForprovider](#securitygroupspecforprovider)
      - [SecuritygroupspecProviderconfigref](#securitygroupspecproviderconfigref)
      - [SecuritygroupspecPublishconnectiondetailsto](#securitygroupspecpublishconnectiondetailsto)
      - [SecuritygroupspecWriteconnectionsecrettoref](#securitygroupspecwriteconnectionsecrettoref)
      - [SecuritygroupspecforproviderEgressitem](#securitygroupspecforprovideregressitem)
      - [SecuritygroupspecforproviderIngressitem](#securitygroupspecforprovideringressitem)
      - [SecuritygroupspecforproviderTagsitem](#securitygroupspecforprovidertagsitem)
      - [SecuritygroupspecforproviderVpcidref](#securitygroupspecforprovidervpcidref)
      - [SecuritygroupspecforproviderVpcidselector](#securitygroupspecforprovidervpcidselector)
      - [SecuritygroupspecforprovideregressitemIprangesitem](#securitygroupspecforprovideregressitemiprangesitem)
      - [SecuritygroupspecforprovideregressitemIpv6Rangesitem](#securitygroupspecforprovideregressitemipv6rangesitem)
      - [SecuritygroupspecforprovideregressitemPrefixlistidsitem](#securitygroupspecforprovideregressitemprefixlistidsitem)
      - [SecuritygroupspecforprovideregressitemUseridgrouppairsitem](#securitygroupspecforprovideregressitemuseridgrouppairsitem)
      - [SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidref](#securitygroupspecforprovideregressitemuseridgrouppairsitemgroupidref)
      - [SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidselector](#securitygroupspecforprovideregressitemuseridgrouppairsitemgroupidselector)
      - [SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidref](#securitygroupspecforprovideregressitemuseridgrouppairsitemvpcidref)
      - [SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidselector](#securitygroupspecforprovideregressitemuseridgrouppairsitemvpcidselector)
      - [SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidrefPolicy](#securitygroupspecforprovideregressitemuseridgrouppairsitemgroupidrefpolicy)
      - [SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidselectorPolicy](#securitygroupspecforprovideregressitemuseridgrouppairsitemgroupidselectorpolicy)
      - [SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidrefPolicy](#securitygroupspecforprovideregressitemuseridgrouppairsitemvpcidrefpolicy)
      - [SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidselectorPolicy](#securitygroupspecforprovideregressitemuseridgrouppairsitemvpcidselectorpolicy)
      - [SecuritygroupspecforprovideringressitemIprangesitem](#securitygroupspecforprovideringressitemiprangesitem)
      - [SecuritygroupspecforprovideringressitemIpv6Rangesitem](#securitygroupspecforprovideringressitemipv6rangesitem)
      - [SecuritygroupspecforprovideringressitemPrefixlistidsitem](#securitygroupspecforprovideringressitemprefixlistidsitem)
      - [SecuritygroupspecforprovideringressitemUseridgrouppairsitem](#securitygroupspecforprovideringressitemuseridgrouppairsitem)
      - [SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidref](#securitygroupspecforprovideringressitemuseridgrouppairsitemgroupidref)
      - [SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidselector](#securitygroupspecforprovideringressitemuseridgrouppairsitemgroupidselector)
      - [SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidref](#securitygroupspecforprovideringressitemuseridgrouppairsitemvpcidref)
      - [SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidselector](#securitygroupspecforprovideringressitemuseridgrouppairsitemvpcidselector)
      - [SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidrefPolicy](#securitygroupspecforprovideringressitemuseridgrouppairsitemgroupidrefpolicy)
      - [SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidselectorPolicy](#securitygroupspecforprovideringressitemuseridgrouppairsitemgroupidselectorpolicy)
      - [SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidrefPolicy](#securitygroupspecforprovideringressitemuseridgrouppairsitemvpcidrefpolicy)
      - [SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidselectorPolicy](#securitygroupspecforprovideringressitemuseridgrouppairsitemvpcidselectorpolicy)
      - [SecuritygroupspecforprovidervpcidrefPolicy](#securitygroupspecforprovidervpcidrefpolicy)
      - [SecuritygroupspecforprovidervpcidselectorPolicy](#securitygroupspecforprovidervpcidselectorpolicy)
      - [SecuritygroupspecproviderconfigrefPolicy](#securitygroupspecproviderconfigrefpolicy)
      - [SecuritygroupspecpublishconnectiondetailstoConfigref](#securitygroupspecpublishconnectiondetailstoconfigref)
      - [SecuritygroupspecpublishconnectiondetailstoMetadata](#securitygroupspecpublishconnectiondetailstometadata)
      - [SecuritygroupspecpublishconnectiondetailstoconfigrefPolicy](#securitygroupspecpublishconnectiondetailstoconfigrefpolicy)
      - [SecuritygroupstatusAtprovider](#securitygroupstatusatprovider)
      - [SecuritygroupstatusConditionsitem](#securitygroupstatusconditionsitem)
      - [SecuritygroupstatusatproviderEgressrulesitem](#securitygroupstatusatprovideregressrulesitem)
      - [SecuritygroupstatusatproviderIngressrulesitem](#securitygroupstatusatprovideringressrulesitem)
      - [SecuritygroupstatusatprovideregressrulesitemReferencedgroupinfo](#securitygroupstatusatprovideregressrulesitemreferencedgroupinfo)
      - [SecuritygroupstatusatprovideringressrulesitemReferencedgroupinfo](#securitygroupstatusatprovideringressrulesitemreferencedgroupinfo)
      - [Subnet](#subnet)
      - [SubnetSpec](#subnetspec)
      - [SubnetStatus](#subnetstatus)
      - [SubnetspecForprovider](#subnetspecforprovider)
      - [SubnetspecProviderconfigref](#subnetspecproviderconfigref)
      - [SubnetspecPublishconnectiondetailsto](#subnetspecpublishconnectiondetailsto)
      - [SubnetspecWriteconnectionsecrettoref](#subnetspecwriteconnectionsecrettoref)
      - [SubnetspecforproviderTagsitem](#subnetspecforprovidertagsitem)
      - [SubnetspecforproviderVpcidref](#subnetspecforprovidervpcidref)
      - [SubnetspecforproviderVpcidselector](#subnetspecforprovidervpcidselector)
      - [SubnetspecforprovidervpcidrefPolicy](#subnetspecforprovidervpcidrefpolicy)
      - [SubnetspecforprovidervpcidselectorPolicy](#subnetspecforprovidervpcidselectorpolicy)
      - [SubnetspecproviderconfigrefPolicy](#subnetspecproviderconfigrefpolicy)
      - [SubnetspecpublishconnectiondetailstoConfigref](#subnetspecpublishconnectiondetailstoconfigref)
      - [SubnetspecpublishconnectiondetailstoMetadata](#subnetspecpublishconnectiondetailstometadata)
      - [SubnetspecpublishconnectiondetailstoconfigrefPolicy](#subnetspecpublishconnectiondetailstoconfigrefpolicy)
      - [SubnetstatusAtprovider](#subnetstatusatprovider)
      - [SubnetstatusConditionsitem](#subnetstatusconditionsitem)
      - [Vpc](#vpc)
      - [VpcSpec](#vpcspec)
      - [VpcStatus](#vpcstatus)
      - [VpcspecForprovider](#vpcspecforprovider)
      - [VpcspecProviderconfigref](#vpcspecproviderconfigref)
      - [VpcspecPublishconnectiondetailsto](#vpcspecpublishconnectiondetailsto)
      - [VpcspecWriteconnectionsecrettoref](#vpcspecwriteconnectionsecrettoref)
      - [VpcspecforproviderTagsitem](#vpcspecforprovidertagsitem)
      - [VpcspecproviderconfigrefPolicy](#vpcspecproviderconfigrefpolicy)
      - [VpcspecpublishconnectiondetailstoConfigref](#vpcspecpublishconnectiondetailstoconfigref)
      - [VpcspecpublishconnectiondetailstoMetadata](#vpcspecpublishconnectiondetailstometadata)
      - [VpcspecpublishconnectiondetailstoconfigrefPolicy](#vpcspecpublishconnectiondetailstoconfigrefpolicy)
      - [VpcstatusAtprovider](#vpcstatusatprovider)
      - [VpcstatusConditionsitem](#vpcstatusconditionsitem)
      - [VpcstatusatproviderCidrblockassociationsetitem](#vpcstatusatprovidercidrblockassociationsetitem)
      - [VpcstatusatproviderIpv6Cidrblockassociationsetitem](#vpcstatusatprovideripv6cidrblockassociationsetitem)
      - [VpcstatusatprovidercidrblockassociationsetitemCidrblockstate](#vpcstatusatprovidercidrblockassociationsetitemcidrblockstate)
      - [Vpcstatusatprovideripv6CidrblockassociationsetitemIpv6Cidrblockstate](#vpcstatusatprovideripv6cidrblockassociationsetitemipv6cidrblockstate)
  - iam_aws_crossplane_io
    - v1beta1
      - [Role](#role)
      - [RoleSpec](#rolespec)
      - [RoleStatus](#rolestatus)
      - [Rolepolicyattachment](#rolepolicyattachment)
      - [RolepolicyattachmentSpec](#rolepolicyattachmentspec)
      - [RolepolicyattachmentStatus](#rolepolicyattachmentstatus)
      - [RolepolicyattachmentspecForprovider](#rolepolicyattachmentspecforprovider)
      - [RolepolicyattachmentspecProviderconfigref](#rolepolicyattachmentspecproviderconfigref)
      - [RolepolicyattachmentspecPublishconnectiondetailsto](#rolepolicyattachmentspecpublishconnectiondetailsto)
      - [RolepolicyattachmentspecWriteconnectionsecrettoref](#rolepolicyattachmentspecwriteconnectionsecrettoref)
      - [RolepolicyattachmentspecforproviderPolicyarnref](#rolepolicyattachmentspecforproviderpolicyarnref)
      - [RolepolicyattachmentspecforproviderPolicyarnselector](#rolepolicyattachmentspecforproviderpolicyarnselector)
      - [RolepolicyattachmentspecforproviderRolenameref](#rolepolicyattachmentspecforproviderrolenameref)
      - [RolepolicyattachmentspecforproviderRolenameselector](#rolepolicyattachmentspecforproviderrolenameselector)
      - [RolepolicyattachmentspecforproviderpolicyarnrefPolicy](#rolepolicyattachmentspecforproviderpolicyarnrefpolicy)
      - [RolepolicyattachmentspecforproviderpolicyarnselectorPolicy](#rolepolicyattachmentspecforproviderpolicyarnselectorpolicy)
      - [RolepolicyattachmentspecforproviderrolenamerefPolicy](#rolepolicyattachmentspecforproviderrolenamerefpolicy)
      - [RolepolicyattachmentspecforproviderrolenameselectorPolicy](#rolepolicyattachmentspecforproviderrolenameselectorpolicy)
      - [RolepolicyattachmentspecproviderconfigrefPolicy](#rolepolicyattachmentspecproviderconfigrefpolicy)
      - [RolepolicyattachmentspecpublishconnectiondetailstoConfigref](#rolepolicyattachmentspecpublishconnectiondetailstoconfigref)
      - [RolepolicyattachmentspecpublishconnectiondetailstoMetadata](#rolepolicyattachmentspecpublishconnectiondetailstometadata)
      - [RolepolicyattachmentspecpublishconnectiondetailstoconfigrefPolicy](#rolepolicyattachmentspecpublishconnectiondetailstoconfigrefpolicy)
      - [RolepolicyattachmentstatusAtprovider](#rolepolicyattachmentstatusatprovider)
      - [RolepolicyattachmentstatusConditionsitem](#rolepolicyattachmentstatusconditionsitem)
      - [RolespecForprovider](#rolespecforprovider)
      - [RolespecProviderconfigref](#rolespecproviderconfigref)
      - [RolespecPublishconnectiondetailsto](#rolespecpublishconnectiondetailsto)
      - [RolespecWriteconnectionsecrettoref](#rolespecwriteconnectionsecrettoref)
      - [RolespecforproviderTagsitem](#rolespecforprovidertagsitem)
      - [RolespecproviderconfigrefPolicy](#rolespecproviderconfigrefpolicy)
      - [RolespecpublishconnectiondetailstoConfigref](#rolespecpublishconnectiondetailstoconfigref)
      - [RolespecpublishconnectiondetailstoMetadata](#rolespecpublishconnectiondetailstometadata)
      - [RolespecpublishconnectiondetailstoconfigrefPolicy](#rolespecpublishconnectiondetailstoconfigrefpolicy)
      - [RolestatusAtprovider](#rolestatusatprovider)
      - [RolestatusConditionsitem](#rolestatusconditionsitem)
      - [RolestatusatproviderRolelastused](#rolestatusatproviderrolelastused)
- schemas
  - [AddressBlueprint](#addressblueprint)
  - [FlowlogBlueprint](#flowlogblueprint)
  - [InternetgatewayBlueprint](#internetgatewayblueprint)
  - [LoggroupBlueprint](#loggroupblueprint)
  - [NatgatewayBlueprint](#natgatewayblueprint)
  - [RoleBlueprint](#roleblueprint)
  - [RolepolicyattachmentBlueprint](#rolepolicyattachmentblueprint)
  - [RoutetableBlueprint](#routetableblueprint)
  - [SecuritygroupBlueprint](#securitygroupblueprint)
  - [SubnetBlueprint](#subnetblueprint)
  - [VpcBlueprint](#vpcblueprint)
  - [VpcendpointBlueprint](#vpcendpointblueprint)

## Schemas

### Loggroup

LogGroup is the Schema for the LogGroups API

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"cloudwatchlogs.aws.crossplane.io/v1alpha1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"LogGroup"|
|**metadata**|any|No description available.||
|**spec** `required`|[LoggroupSpec](#loggroupspec)|LogGroupSpec defines the desired state of LogGroup||
|**status**|[LoggroupStatus](#loggroupstatus)|LogGroupStatus defines the observed state of LogGroup.||
### LoggroupSpec

LogGroupSpec defines the desired state of LogGroup

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[LoggroupspecForprovider](#loggroupspecforprovider)|LogGroupParameters defines the desired state of LogGroup||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[LoggroupspecProviderconfigref](#loggroupspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[LoggroupspecPublishconnectiondetailsto](#loggroupspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[LoggroupspecWriteconnectionsecrettoref](#loggroupspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### LoggroupStatus

LogGroupStatus defines the observed state of LogGroup.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[LoggroupstatusAtprovider](#loggroupstatusatprovider)|LogGroupObservation defines the observed state of LogGroup||
|**conditions**|[[LoggroupstatusConditionsitem](#loggroupstatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### LoggroupspecForprovider

LogGroupParameters defines the desired state of LogGroup

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**kmsKeyID**|str|The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.<br />For more information, see Amazon Resource Names - AWS Key Management Service<br />(AWS KMS) (https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms).||
|**kmsKeyIDRef**|[LoggroupspecforproviderKmskeyidref](#loggroupspecforproviderkmskeyidref)|KMSKeyIDRef is a reference to a KMS Key used to set KMSKeyID.||
|**kmsKeyIDSelector**|[LoggroupspecforproviderKmskeyidselector](#loggroupspecforproviderkmskeyidselector)|KMSKeyIDSelector selects a reference to a KMS Key used to set KMSKeyID.||
|**logGroupName** `required`|str|The name of the log group.||
|**region** `required`|str|Region is which region the LogGroup will be created.||
|**retentionInDays**|int|The number of days to retain the log events in the specified log group.<br />If you select 0, the events in the log group are always retained and never expire.||
|**tags**|{str:str}|The key-value pairs to use for the tags.<br /><br />You can grant users access to certain log groups while preventing them from<br />accessing other log groups. To do so, tag your groups and use IAM policies<br />that refer to those tags. To assign tags when you create a log group, you<br />must have either the logs:TagResource or logs:TagLogGroup permission. For<br />more information about tagging, see Tagging Amazon Web Services resources<br />(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html). For more<br />information about using tags to control access, see Controlling access to<br />Amazon Web Services resources using tags (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).||
### LoggroupspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[LoggroupspecproviderconfigrefPolicy](#loggroupspecproviderconfigrefpolicy)|Policies for referencing.||
### LoggroupspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[LoggroupspecpublishconnectiondetailstoConfigref](#loggroupspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[LoggroupspecpublishconnectiondetailstoMetadata](#loggroupspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### LoggroupspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### LoggroupspecforproviderKmskeyidref

KMSKeyIDRef is a reference to a KMS Key used to set KMSKeyID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[LoggroupspecforproviderkmskeyidrefPolicy](#loggroupspecforproviderkmskeyidrefpolicy)|Policies for referencing.||
### LoggroupspecforproviderKmskeyidselector

KMSKeyIDSelector selects a reference to a KMS Key used to set KMSKeyID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[LoggroupspecforproviderkmskeyidselectorPolicy](#loggroupspecforproviderkmskeyidselectorpolicy)|Policies for selection.||
### LoggroupspecforproviderkmskeyidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### LoggroupspecforproviderkmskeyidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### LoggroupspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### LoggroupspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[LoggroupspecpublishconnectiondetailstoconfigrefPolicy](#loggroupspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### LoggroupspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### LoggroupspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### LoggroupstatusAtprovider

LogGroupObservation defines the observed state of LogGroup

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**arn**|str|The Amazon Resource Name (ARN) of the log group.||
|**creationTime**|int|The creation time of the log group, expressed as the number of milliseconds<br />after Jan 1, 1970 00:00:00 UTC.||
|**kmsKeyID**|str|The Amazon Resource Name (ARN) of the KMS key to use when encrypting log<br />data.||
|**logGroupName**|str|The name of the log group.||
|**metricFilterCount**|int|The number of metric filters.||
|**retentionInDays**|int|No description available.||
|**storedBytes**|int|The number of bytes stored.||
### LoggroupstatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### Flowlog

FlowLog is the Schema for the FlowLogs API

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1alpha1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"FlowLog"|
|**metadata**|any|No description available.||
|**spec** `required`|[FlowlogSpec](#flowlogspec)|FlowLogSpec defines the desired state of FlowLog||
|**status**|[FlowlogStatus](#flowlogstatus)|FlowLogStatus defines the observed state of FlowLog.||
### FlowlogSpec

FlowLogSpec defines the desired state of FlowLog

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[FlowlogspecForprovider](#flowlogspecforprovider)|FlowLogParameters defines the desired state of FlowLog||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[FlowlogspecProviderconfigref](#flowlogspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[FlowlogspecPublishconnectiondetailsto](#flowlogspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[FlowlogspecWriteconnectionsecrettoref](#flowlogspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### FlowlogStatus

FlowLogStatus defines the observed state of FlowLog.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[FlowlogstatusAtprovider](#flowlogstatusatprovider)|FlowLogObservation defines the observed state of FlowLog||
|**conditions**|[[FlowlogstatusConditionsitem](#flowlogstatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### FlowlogspecForprovider

FlowLogParameters defines the desired state of FlowLog

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**clientToken**|str|Unique, case-sensitive identifier that you provide to ensure the idempotency<br />of the request. For more information, see How to ensure idempotency (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).||
|**cloudWatchLogDestination**|str|The Amazon Resource Names (ARNs) of a CloudWatch Log Group.||
|**cloudWatchLogDestinationRef**|[FlowlogspecforproviderCloudwatchlogdestinationref](#flowlogspecforprovidercloudwatchlogdestinationref)|CloudWatchLogDestinationRef is a reference to a CloudWatch Log Group used to set<br />the CloudWatchLogDestination.||
|**cloudWatchLogDestinationSelector**|[FlowlogspecforproviderCloudwatchlogdestinationselector](#flowlogspecforprovidercloudwatchlogdestinationselector)|CloudWatchLogDestinationSelector selects a reference to a CloudWatch Log Group used<br />to set the CloudWatchLogDestination.||
|**deliverCrossAccountRole**|str|The ARN of the IAM role that allows Amazon EC2 to publish flow logs across<br />accounts.||
|**deliverLogsPermissionArn**|str|The ARN for the IAM role that permits Amazon EC2<br />to publish flow logs to a CloudWatch Logs log group in your<br />account. \n If you specify LogDestinationType as s3, do not<br />specify DeliverLogsPermissionArn or LogGroupName.||
|**deliverLogsPermissionArnRef**|[FlowlogspecforproviderDeliverlogspermissionarnref](#flowlogspecforproviderdeliverlogspermissionarnref)|DeliverLogsPermissionARNRef is a reference to DeliverLogsPermissionARN used to set<br />the DeliverLogsPermissionARN.||
|**deliverLogsPermissionArnSelector**|[FlowlogspecforproviderDeliverlogspermissionarnselector](#flowlogspecforproviderdeliverlogspermissionarnselector)|DeliverLogsPermissionARNelector selects a reference to DeliverLogsPermissionARN used<br />to set the DeliverLogsPermissionARN.||
|**destinationOptions**|[FlowlogspecforproviderDestinationoptions](#flowlogspecforproviderdestinationoptions)|The destination options.||
|**logDestination**|str|The destination for the flow log data. The meaning of this parameter depends<br />on the destination type.<br /><br />* If the destination type is cloud-watch-logs, specify the ARN of a CloudWatch<br />Logs log group. For example: arn:aws:logs:region:account_id:log-group:my_group<br />Alternatively, use the LogGroupName parameter.<br /><br />* If the destination type is s3, specify the ARN of an S3 bucket. For<br />example: arn:aws:s3:::my_bucket/my_subfolder/ The subfolder is optional.<br />Note that you can't use AWSLogs as a subfolder name.<br /><br />* If the destination type is kinesis-data-firehose, specify the ARN of<br />a Kinesis Data Firehose delivery stream. For example: arn:aws:firehose:region:account_id:deliverystream:my_stream||
|**logDestinationType**|str|The type of destination for the flow log data.<br /><br />Default: cloud-watch-logs||
|**logFormat**|str|The fields to include in the flow log record. List the fields in the order<br />in which they should appear. If you omit this parameter, the flow log is<br />created using the default format. If you specify this parameter, you must<br />include at least one field. For more information about the available fields,<br />see Flow log records (https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records)<br />in the Amazon VPC User Guide or Transit Gateway Flow Log records (https://docs.aws.amazon.com/vpc/latest/tgw/tgw-flow-logs.html#flow-log-records)<br />in the Amazon Web Services Transit Gateway Guide.<br /><br />Specify the fields using the ${field-id} format, separated by spaces.||
|**logGroupName**|str|The name of a new or existing CloudWatch Logs log group where Amazon EC2<br />publishes your flow logs.<br /><br />This parameter is valid only if the destination type is cloud-watch-logs.||
|**maxAggregationInterval**|int|The maximum interval of time during which a flow of packets is captured and<br />aggregated into a flow log record. The possible values are 60 seconds (1<br />minute) or 600 seconds (10 minutes). This parameter must be 60 seconds for<br />transit gateway resource types.<br /><br />When a network interface is attached to a Nitro-based instance (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances),<br />the aggregation interval is always 60 seconds or less, regardless of the<br />value that you specify.<br /><br />Default: 600||
|**networkInterfaceId**|str|The ID of the NetworkInterface for which you want to create a flow log.||
|**region** `required`|str|Region is which region the FlowLog will be created.||
|**resourceIDs**|[str]|The ID of the subnet, network interface, or VPC for which you want to create<br />a flow log.<br /><br />Constraints: Maximum of 1000 resources||
|**resourceType**|str|The type of resource for which to create the flow log. For example, if you<br />specified a VPC ID for the ResourceId property, specify VPC for this property.||
|**s3BucketLogDestination**|str|The Amazon Resource Names (ARNs) of a CloudWatch Log Group.||
|**s3BucketLogDestinationRef**|[FlowlogspecforproviderS3Bucketlogdestinationref](#flowlogspecforproviders3bucketlogdestinationref)|S3BucketLogDestinationRef is a reference to a S3 Bucket  to set<br />the S3BucketLogDestination.||
|**s3BucketLogDestinationSelector**|[FlowlogspecforproviderS3Bucketlogdestinationselector](#flowlogspecforproviders3bucketlogdestinationselector)|S3BucketLogDestinationSelector selects a reference to a S3 Bucket used<br />to set the S3BucketLogDestination.||
|**s3BucketSubfolder**|str|S3BucketSubfolder allows you to use a subfolder in a S3Bucket, if S3BucketLogDestination is used to determin the ARN of a Bucket managed by crossplane<br />S3BucketSubfolder starts and ends without an slash e.g. test/test2<br />You cannot use AWSLogs as a subfolder name. This is a reserved term.||
|**subnetId**|str|The ID of the one or more Subnets for which you want to create a flow log.||
|**subnetIdRef**|[FlowlogspecforproviderSubnetidref](#flowlogspecforprovidersubnetidref)|SubnetIDRefs is a referenc to a SubnetID used to set<br />the SubnetID.||
|**subnetIdSelector**|[FlowlogspecforproviderSubnetidselector](#flowlogspecforprovidersubnetidselector)|SubnetIDSelector selects reference to a SubnetID used<br />to set the SubnetID.||
|**tags**|[[FlowlogspecforproviderTagsitem](#flowlogspecforprovidertagsitem)]|Metadata tagging key value pairs||
|**trafficType**|str|The type of traffic to monitor (accepted traffic, rejected traffic, or all<br />traffic). This parameter is not supported for transit gateway resource types.<br />It is required for the other resource types.||
|**transitGatewayAttachmentId**|str|The ID of the TransitGatewayAttachment for which you want to create a flow log.||
|**transitGatewayAttachmentIdRef**|[FlowlogspecforproviderTransitgatewayattachmentidref](#flowlogspecforprovidertransitgatewayattachmentidref)|TransitGatewayAttachmentIDRef is a reference to an API used to set<br />the TransitGatewayAttachmentID.||
|**transitGatewayAttachmentIdSelector**|[FlowlogspecforproviderTransitgatewayattachmentidselector](#flowlogspecforprovidertransitgatewayattachmentidselector)|TransitGatewayAttachmentIDSelector selects references to API used<br />to set the TransitGatewayAttachmentID.||
|**transitGatewayId**|str|The ID of the TransitGateway for which you want to create a flow log.||
|**transitGatewayIdRef**|[FlowlogspecforproviderTransitgatewayidref](#flowlogspecforprovidertransitgatewayidref)|TransitGatewayIDRef is a reference to an API used to set<br />the TransitGatewayID.||
|**transitGatewayIdSelector**|[FlowlogspecforproviderTransitgatewayidselector](#flowlogspecforprovidertransitgatewayidselector)|TransitGatewayIDSelector selects references to API used<br />to set the TransitGatewayID.||
|**vpcId**|str|The ID of the VPC for which you want to create a flow log.||
|**vpcIdRef**|[FlowlogspecforproviderVpcidref](#flowlogspecforprovidervpcidref)|VPCIDRef is a reference to an API used to set<br />the VPCID.||
|**vpcIdSelector**|[FlowlogspecforproviderVpcidselector](#flowlogspecforprovidervpcidselector)|VPCIDSelector selects references to API used<br />to set the VPCID.||
### FlowlogspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[FlowlogspecproviderconfigrefPolicy](#flowlogspecproviderconfigrefpolicy)|Policies for referencing.||
### FlowlogspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[FlowlogspecpublishconnectiondetailstoConfigref](#flowlogspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[FlowlogspecpublishconnectiondetailstoMetadata](#flowlogspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### FlowlogspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### FlowlogspecforproviderCloudwatchlogdestinationref

CloudWatchLogDestinationRef is a reference to a CloudWatch Log Group used to set the CloudWatchLogDestination.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[FlowlogspecforprovidercloudwatchlogdestinationrefPolicy](#flowlogspecforprovidercloudwatchlogdestinationrefpolicy)|Policies for referencing.||
### FlowlogspecforproviderCloudwatchlogdestinationselector

CloudWatchLogDestinationSelector selects a reference to a CloudWatch Log Group used to set the CloudWatchLogDestination.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[FlowlogspecforprovidercloudwatchlogdestinationselectorPolicy](#flowlogspecforprovidercloudwatchlogdestinationselectorpolicy)|Policies for selection.||
### FlowlogspecforproviderDeliverlogspermissionarnref

DeliverLogsPermissionARNRef is a reference to DeliverLogsPermissionARN used to set the DeliverLogsPermissionARN.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[FlowlogspecforproviderdeliverlogspermissionarnrefPolicy](#flowlogspecforproviderdeliverlogspermissionarnrefpolicy)|Policies for referencing.||
### FlowlogspecforproviderDeliverlogspermissionarnselector

DeliverLogsPermissionARNelector selects a reference to DeliverLogsPermissionARN used to set the DeliverLogsPermissionARN.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[FlowlogspecforproviderdeliverlogspermissionarnselectorPolicy](#flowlogspecforproviderdeliverlogspermissionarnselectorpolicy)|Policies for selection.||
### FlowlogspecforproviderDestinationoptions

The destination options.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**fileFormat**|str|No description available.||
|**hiveCompatiblePartitions**|bool|No description available.||
|**perHourPartition**|bool|No description available.||
### FlowlogspecforproviderS3Bucketlogdestinationref

S3BucketLogDestinationRef is a reference to a S3 Bucket  to set the S3BucketLogDestination.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[Flowlogspecforproviders3BucketlogdestinationrefPolicy](#flowlogspecforproviders3bucketlogdestinationrefpolicy)|Policies for referencing.||
### FlowlogspecforproviderS3Bucketlogdestinationselector

S3BucketLogDestinationSelector selects a reference to a S3 Bucket used to set the S3BucketLogDestination.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[Flowlogspecforproviders3BucketlogdestinationselectorPolicy](#flowlogspecforproviders3bucketlogdestinationselectorpolicy)|Policies for selection.||
### FlowlogspecforproviderSubnetidref

SubnetIDRefs is a referenc to a SubnetID used to set the SubnetID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[FlowlogspecforprovidersubnetidrefPolicy](#flowlogspecforprovidersubnetidrefpolicy)|Policies for referencing.||
### FlowlogspecforproviderSubnetidselector

SubnetIDSelector selects reference to a SubnetID used to set the SubnetID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[FlowlogspecforprovidersubnetidselectorPolicy](#flowlogspecforprovidersubnetidselectorpolicy)|Policies for selection.||
### FlowlogspecforproviderTagsitem

FlowlogspecforproviderTagsitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key**|str|No description available.||
|**value**|str|No description available.||
### FlowlogspecforproviderTransitgatewayattachmentidref

TransitGatewayAttachmentIDRef is a reference to an API used to set the TransitGatewayAttachmentID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[FlowlogspecforprovidertransitgatewayattachmentidrefPolicy](#flowlogspecforprovidertransitgatewayattachmentidrefpolicy)|Policies for referencing.||
### FlowlogspecforproviderTransitgatewayattachmentidselector

TransitGatewayAttachmentIDSelector selects references to API used to set the TransitGatewayAttachmentID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[FlowlogspecforprovidertransitgatewayattachmentidselectorPolicy](#flowlogspecforprovidertransitgatewayattachmentidselectorpolicy)|Policies for selection.||
### FlowlogspecforproviderTransitgatewayidref

TransitGatewayIDRef is a reference to an API used to set the TransitGatewayID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[FlowlogspecforprovidertransitgatewayidrefPolicy](#flowlogspecforprovidertransitgatewayidrefpolicy)|Policies for referencing.||
### FlowlogspecforproviderTransitgatewayidselector

TransitGatewayIDSelector selects references to API used to set the TransitGatewayID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[FlowlogspecforprovidertransitgatewayidselectorPolicy](#flowlogspecforprovidertransitgatewayidselectorpolicy)|Policies for selection.||
### FlowlogspecforproviderVpcidref

VPCIDRef is a reference to an API used to set the VPCID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[FlowlogspecforprovidervpcidrefPolicy](#flowlogspecforprovidervpcidrefpolicy)|Policies for referencing.||
### FlowlogspecforproviderVpcidselector

VPCIDSelector selects references to API used to set the VPCID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[FlowlogspecforprovidervpcidselectorPolicy](#flowlogspecforprovidervpcidselectorpolicy)|Policies for selection.||
### FlowlogspecforprovidercloudwatchlogdestinationrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidercloudwatchlogdestinationselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforproviderdeliverlogspermissionarnrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforproviderdeliverlogspermissionarnselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### Flowlogspecforproviders3BucketlogdestinationrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### Flowlogspecforproviders3BucketlogdestinationselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidersubnetidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidersubnetidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidertransitgatewayattachmentidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidertransitgatewayattachmentidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidertransitgatewayidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidertransitgatewayidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidervpcidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecforprovidervpcidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[FlowlogspecpublishconnectiondetailstoconfigrefPolicy](#flowlogspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### FlowlogspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### FlowlogspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### FlowlogstatusAtprovider

FlowLogObservation defines the observed state of FlowLog

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**creationTime**|str|The date and time the flow log was created.||
|**deliverLogsStatus**|str|The status of the logs delivery (SUCCESS \| FAILED).||
|**flowLogID**|str|The ID of the flow log.||
|**flowLogStatus**|str|The status of the flow log (ACTIVE).||
|**resourceID**|str|The ID of the resource being monitored.||
|**tags**|[[FlowlogstatusatproviderTagsitem](#flowlogstatusatprovidertagsitem)]|The tags for the flow log.||
### FlowlogstatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### FlowlogstatusatproviderTagsitem

FlowlogstatusatproviderTagsitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key**|str|No description available.||
|**value**|str|No description available.||
### Vpcendpoint

VPCEndpoint is the Schema for the VPCEndpoints API

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1alpha1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"VPCEndpoint"|
|**metadata**|any|No description available.||
|**spec** `required`|[VpcendpointSpec](#vpcendpointspec)|VPCEndpointSpec defines the desired state of VPCEndpoint||
|**status**|[VpcendpointStatus](#vpcendpointstatus)|VPCEndpointStatus defines the observed state of VPCEndpoint.||
### VpcendpointSpec

VPCEndpointSpec defines the desired state of VPCEndpoint

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[VpcendpointspecForprovider](#vpcendpointspecforprovider)|VPCEndpointParameters defines the desired state of VPCEndpoint||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[VpcendpointspecProviderconfigref](#vpcendpointspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[VpcendpointspecPublishconnectiondetailsto](#vpcendpointspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[VpcendpointspecWriteconnectionsecrettoref](#vpcendpointspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### VpcendpointStatus

VPCEndpointStatus defines the observed state of VPCEndpoint.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[VpcendpointstatusAtprovider](#vpcendpointstatusatprovider)|VPCEndpointObservation defines the observed state of VPCEndpoint||
|**conditions**|[[VpcendpointstatusConditionsitem](#vpcendpointstatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### VpcendpointspecForprovider

VPCEndpointParameters defines the desired state of VPCEndpoint

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**dnsOptions**|[VpcendpointspecforproviderDnsoptions](#vpcendpointspecforproviderdnsoptions)|The DNS options for the endpoint.||
|**ipAddressType**|str|The IP address type for the endpoint.||
|**policyDocument**|str|(Interface and gateway endpoints) A policy to attach to the endpoint that<br />controls access to the service. The policy must be in valid JSON format.<br />If this parameter is not specified, we attach a default policy that allows<br />full access to the service.||
|**privateDNSEnabled**|bool|(Interface endpoint) Indicates whether to associate a private hosted zone<br />with the specified VPC. The private hosted zone contains a record set for<br />the default public DNS name for the service for the Region (for example,<br />kinesis.us-east-1.amazonaws.com), which resolves to the private IP addresses<br />of the endpoint network interfaces in the VPC. This enables you to make requests<br />to the default public DNS name for the service instead of the public DNS<br />names that are automatically generated by the VPC endpoint service.<br /><br />To use a private hosted zone, you must set the following VPC attributes to<br />true: enableDnsHostnames and enableDnsSupport. Use ModifyVpcAttribute to<br />set the VPC attributes.<br /><br />Default: true||
|**region** `required`|str|Region is which region the VPCEndpoint will be created.||
|**routeTableIdRefs**|[[VpcendpointspecforproviderRoutetableidrefsitem](#vpcendpointspecforproviderroutetableidrefsitem)]|RouteTableIDRefs is a list of references to RouteTables used to set<br />the RouteTableIDs.||
|**routeTableIdSelector**|[VpcendpointspecforproviderRoutetableidselector](#vpcendpointspecforproviderroutetableidselector)|RouteTableIDsSelector selects references to RouteTables used<br />to set the RouteTableIDs.||
|**routeTableIds**|[str]|(Gateway endpoint) One or more route table IDs.||
|**securityGroupIdRefs**|[[VpcendpointspecforproviderSecuritygroupidrefsitem](#vpcendpointspecforprovidersecuritygroupidrefsitem)]|SecurityGroupIDRefs is a list of references to SecurityGroups used to set<br />the SecurityGroupIDs.||
|**securityGroupIdSelector**|[VpcendpointspecforproviderSecuritygroupidselector](#vpcendpointspecforprovidersecuritygroupidselector)|SecurityGroupIDsSelector selects references to SecurityGroupID used<br />to set the SecurityGroupIDs.||
|**securityGroupIds**|[str]|(Interface endpoint) The ID of one or more security groups to associate with<br />the endpoint network interface.||
|**serviceName** `required`|str|The name of the endpoint service.||
|**subnetConfigurations**|[[VpcendpointspecforproviderSubnetconfigurationsitem](#vpcendpointspecforprovidersubnetconfigurationsitem)]|The subnet configurations for the endpoint.||
|**subnetIdRefs**|[[VpcendpointspecforproviderSubnetidrefsitem](#vpcendpointspecforprovidersubnetidrefsitem)]|SubnetIDRefs is a list of references to Subnets used to set<br />the SubnetIDs.||
|**subnetIdSelector**|[VpcendpointspecforproviderSubnetidselector](#vpcendpointspecforprovidersubnetidselector)|SubnetIDsSelector selects references to Subnets used<br />to set the SubnetIDs.||
|**subnetIds**|[str]|(Interface and Gateway Load Balancer endpoints) The ID of one or more subnets<br />in which to create an endpoint network interface. For a Gateway Load Balancer<br />endpoint, you can specify one subnet only.||
|**tagSpecifications**|[[VpcendpointspecforproviderTagspecificationsitem](#vpcendpointspecforprovidertagspecificationsitem)]|The tags to associate with the endpoint.||
|**tags**|{str:str}|Metadata tagging key value pairs||
|**vpcEndpointType**|str|The type of endpoint.<br /><br />Default: Gateway||
|**vpcId**|str|The ID of the VPC. You must specify this parameter in the request.||
|**vpcIdRef**|[VpcendpointspecforproviderVpcidref](#vpcendpointspecforprovidervpcidref)|VPCIDRef is a reference to an API used to set<br />the VPCID.||
|**vpcIdSelector**|[VpcendpointspecforproviderVpcidselector](#vpcendpointspecforprovidervpcidselector)|VPCIDSelector selects references to API used<br />to set the VPCID.||
### VpcendpointspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[VpcendpointspecproviderconfigrefPolicy](#vpcendpointspecproviderconfigrefpolicy)|Policies for referencing.||
### VpcendpointspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[VpcendpointspecpublishconnectiondetailstoConfigref](#vpcendpointspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[VpcendpointspecpublishconnectiondetailstoMetadata](#vpcendpointspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### VpcendpointspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### VpcendpointspecforproviderDnsoptions

The DNS options for the endpoint.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**dnsRecordIPType**|str|No description available.||
|**privateDNSOnlyForInboundResolverEndpoint**|bool|No description available.||
### VpcendpointspecforproviderRoutetableidrefsitem

A Reference to a named object.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[VpcendpointspecforproviderroutetableidrefsitemPolicy](#vpcendpointspecforproviderroutetableidrefsitempolicy)|Policies for referencing.||
### VpcendpointspecforproviderRoutetableidselector

RouteTableIDsSelector selects references to RouteTables used to set the RouteTableIDs.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[VpcendpointspecforproviderroutetableidselectorPolicy](#vpcendpointspecforproviderroutetableidselectorpolicy)|Policies for selection.||
### VpcendpointspecforproviderSecuritygroupidrefsitem

A Reference to a named object.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[VpcendpointspecforprovidersecuritygroupidrefsitemPolicy](#vpcendpointspecforprovidersecuritygroupidrefsitempolicy)|Policies for referencing.||
### VpcendpointspecforproviderSecuritygroupidselector

SecurityGroupIDsSelector selects references to SecurityGroupID used to set the SecurityGroupIDs.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[VpcendpointspecforprovidersecuritygroupidselectorPolicy](#vpcendpointspecforprovidersecuritygroupidselectorpolicy)|Policies for selection.||
### VpcendpointspecforproviderSubnetconfigurationsitem

VpcendpointspecforproviderSubnetconfigurationsitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**ipv4**|str|No description available.||
|**ipv6**|str|No description available.||
|**subnetID**|str|No description available.||
### VpcendpointspecforproviderSubnetidrefsitem

A Reference to a named object.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[VpcendpointspecforprovidersubnetidrefsitemPolicy](#vpcendpointspecforprovidersubnetidrefsitempolicy)|Policies for referencing.||
### VpcendpointspecforproviderSubnetidselector

SubnetIDsSelector selects references to Subnets used to set the SubnetIDs.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[VpcendpointspecforprovidersubnetidselectorPolicy](#vpcendpointspecforprovidersubnetidselectorpolicy)|Policies for selection.||
### VpcendpointspecforproviderTagspecificationsitem

VpcendpointspecforproviderTagspecificationsitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resourceType**|str|No description available.||
|**tags**|[[VpcendpointspecforprovidertagspecificationsitemTagsitem](#vpcendpointspecforprovidertagspecificationsitemtagsitem)]|No description available.||
### VpcendpointspecforproviderVpcidref

VPCIDRef is a reference to an API used to set the VPCID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[VpcendpointspecforprovidervpcidrefPolicy](#vpcendpointspecforprovidervpcidrefpolicy)|Policies for referencing.||
### VpcendpointspecforproviderVpcidselector

VPCIDSelector selects references to API used to set the VPCID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[VpcendpointspecforprovidervpcidselectorPolicy](#vpcendpointspecforprovidervpcidselectorpolicy)|Policies for selection.||
### VpcendpointspecforproviderroutetableidrefsitemPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecforproviderroutetableidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecforprovidersecuritygroupidrefsitemPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecforprovidersecuritygroupidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecforprovidersubnetidrefsitemPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecforprovidersubnetidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecforprovidertagspecificationsitemTagsitem

VpcendpointspecforprovidertagspecificationsitemTagsitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key**|str|No description available.||
|**value**|str|No description available.||
### VpcendpointspecforprovidervpcidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecforprovidervpcidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[VpcendpointspecpublishconnectiondetailstoconfigrefPolicy](#vpcendpointspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### VpcendpointspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### VpcendpointspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcendpointstatusAtprovider

VPCEndpointObservation defines the observed state of VPCEndpoint

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**creationTimestamp**|str|The date and time that the endpoint was created.||
|**dnsEntries**|[[VpcendpointstatusatproviderDnsentriesitem](#vpcendpointstatusatproviderdnsentriesitem)]|(Interface endpoint) The DNS entries for the endpoint.||
|**groups**|[[VpcendpointstatusatproviderGroupsitem](#vpcendpointstatusatprovidergroupsitem)]|(Interface endpoint) Information about the security groups that are associated<br />with the network interface.||
|**lastError**|[VpcendpointstatusatproviderLasterror](#vpcendpointstatusatproviderlasterror)|The last error that occurred for endpoint.||
|**networkInterfaceIDs**|[str]|(Interface endpoint) The network interfaces for the endpoint.||
|**ownerID**|str|The ID of the Amazon Web Services account that owns the endpoint.||
|**requesterManaged**|bool|Indicates whether the endpoint is being managed by its service.||
|**routeTableIDs**|[str]|(Gateway endpoint) The IDs of the route tables associated with the endpoint.||
|**state**|str|The state of the endpoint.||
|**subnetIDs**|[str]|(Interface endpoint) The subnets for the endpoint.||
|**tags**|[[VpcendpointstatusatproviderTagsitem](#vpcendpointstatusatprovidertagsitem)]|The tags assigned to the endpoint.||
|**vpcEndpointID**|str|The ID of the endpoint.||
|**vpcID**|str|The ID of the VPC to which the endpoint is associated.||
### VpcendpointstatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### VpcendpointstatusatproviderDnsentriesitem

VpcendpointstatusatproviderDnsentriesitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**dnsName**|str|No description available.||
|**hostedZoneID**|str|No description available.||
### VpcendpointstatusatproviderGroupsitem

VpcendpointstatusatproviderGroupsitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**groupID**|str|No description available.||
|**groupName**|str|No description available.||
### VpcendpointstatusatproviderLasterror

The last error that occurred for endpoint.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**code**|str|No description available.||
|**message**|str|No description available.||
### VpcendpointstatusatproviderTagsitem

VpcendpointstatusatproviderTagsitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key**|str|No description available.||
|**value**|str|No description available.||
### Address

An Address is a managed resource that represents an AWS Elastic IP Address.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"Address"|
|**metadata**|any|No description available.||
|**spec** `required`|[AddressSpec](#addressspec)|An AddressSpec defines the desired state of an Address.||
|**status**|[AddressStatus](#addressstatus)|An AddressStatus represents the observed state of an Address.||
### AddressSpec

An AddressSpec defines the desired state of an Address.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[AddressspecForprovider](#addressspecforprovider)|AddressParameters define the desired state of an AWS Elastic IP||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[AddressspecProviderconfigref](#addressspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[AddressspecPublishconnectiondetailsto](#addressspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[AddressspecWriteconnectionsecrettoref](#addressspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### AddressStatus

An AddressStatus represents the observed state of an Address.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[AddressstatusAtprovider](#addressstatusatprovider)|AddressObservation keeps the state for the external resource||
|**conditions**|[[AddressstatusConditionsitem](#addressstatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### AddressspecForprovider

AddressParameters define the desired state of an AWS Elastic IP

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**address**|str|[EC2-VPC] The Elastic IP address to recover or an IPv4 address from an address<br />pool.||
|**customerOwnedIPv4Pool**|str|The ID of a customer-owned address pool. Use this parameter to let Amazon<br />EC2 select an address from the address pool. Alternatively, specify a specific<br />address from the address pool||
|**domain**|"vpc" | "standard"|Set to vpc to allocate the address for use with instances in a VPC.<br />Default: The address is for use with instances in EC2-Classic.||
|**networkBorderGroup**|str|The location from which the IP address is advertised. Use this parameter<br />to limit the address to this location.<br /><br />A network border group is a unique set of Availability Zones or Local Zones<br />from where AWS advertises IP addresses and limits the addresses to the group.<br />IP addresses cannot move between network border groups.<br /><br />Use DescribeAvailabilityZones (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html)<br />to view the network border groups.<br /><br />You cannot use a network border group with EC2 Classic. If you attempt this<br />operation on EC2 classic, you will receive an InvalidParameterCombination<br />error. For more information, see Error Codes (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html).||
|**publicIpv4Pool**|str|The ID of an address pool that you own. Use this parameter to let Amazon<br />EC2 select an address from the address pool. To specify a specific address<br />from the address pool, use the Address parameter instead.||
|**region** `required`|str|Region is the region you'd like your Address to be created in.||
|**tags**|[[AddressspecforproviderTagsitem](#addressspecforprovidertagsitem)]|Tags represents to current ec2 tags.||
### AddressspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[AddressspecproviderconfigrefPolicy](#addressspecproviderconfigrefpolicy)|Policies for referencing.||
### AddressspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[AddressspecpublishconnectiondetailstoConfigref](#addressspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[AddressspecpublishconnectiondetailstoMetadata](#addressspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### AddressspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### AddressspecforproviderTagsitem

Tag defines a tag

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key** `required`|str|Key is the name of the tag.||
|**value** `required`|str|Value is the value of the tag.||
### AddressspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### AddressspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[AddressspecpublishconnectiondetailstoconfigrefPolicy](#addressspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### AddressspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### AddressspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### AddressstatusAtprovider

AddressObservation keeps the state for the external resource

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**allocationId**|str|The ID representing the allocation of the address for use with EC2-VPC.||
|**associationId**|str|The ID representing the association of the address with an instance in a<br />VPC.||
|**customerOwnedIp**|str|The customer-owned IP address.||
|**customerOwnedIpv4Pool**|str|The ID of the customer-owned address pool.||
|**domain** `required`|str|Indicates whether this Elastic IP address is for use with instances in EC2-Classic<br />(standard) or instances in a VPC (vpc).||
|**instanceId**|str|The ID of the instance that the address is associated with (if any).||
|**networkBorderGroup**|str|The name of the location from which the IP address is advertised.||
|**networkInterfaceId** `required`|str|The ID of the network interface.||
|**networkInterfaceOwnerId**|str|The ID of the AWS account that owns the network interface.||
|**privateIpAddress** `required`|str|The private IP address associated with the Elastic IP address.||
|**publicIp** `required`|str|The Elastic IP address.||
|**publicIpv4Pool**|str|The ID of an address pool.||
### AddressstatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### Internetgateway

An InternetGateway is a managed resource that represents an AWS VPC Internet Gateway.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"InternetGateway"|
|**metadata**|any|No description available.||
|**spec** `required`|[InternetgatewaySpec](#internetgatewayspec)|An InternetGatewaySpec defines the desired state of an InternetGateway.||
|**status**|[InternetgatewayStatus](#internetgatewaystatus)|An InternetGatewayStatus represents the observed state of an InternetGateway.||
### InternetgatewaySpec

An InternetGatewaySpec defines the desired state of an InternetGateway.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[InternetgatewayspecForprovider](#internetgatewayspecforprovider)|InternetGatewayParameters define the desired state of an AWS VPC Internet<br />Gateway.||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[InternetgatewayspecProviderconfigref](#internetgatewayspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[InternetgatewayspecPublishconnectiondetailsto](#internetgatewayspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[InternetgatewayspecWriteconnectionsecrettoref](#internetgatewayspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### InternetgatewayStatus

An InternetGatewayStatus represents the observed state of an InternetGateway.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[InternetgatewaystatusAtprovider](#internetgatewaystatusatprovider)|InternetGatewayObservation keeps the state for the external resource||
|**conditions**|[[InternetgatewaystatusConditionsitem](#internetgatewaystatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### InternetgatewayspecForprovider

InternetGatewayParameters define the desired state of an AWS VPC Internet Gateway.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**region**|str|Region is the region you'd like your VPC to be created in.||
|**tags**|[[InternetgatewayspecforproviderTagsitem](#internetgatewayspecforprovidertagsitem)]|Tags represents to current ec2 tags.||
|**vpcId**|str|VPCID is the ID of the VPC.||
|**vpcIdRef**|[InternetgatewayspecforproviderVpcidref](#internetgatewayspecforprovidervpcidref)|VPCIDRef references a VPC to and retrieves its vpcId||
|**vpcIdSelector**|[InternetgatewayspecforproviderVpcidselector](#internetgatewayspecforprovidervpcidselector)|VPCIDSelector selects a reference to a VPC to and retrieves its vpcId||
### InternetgatewayspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[InternetgatewayspecproviderconfigrefPolicy](#internetgatewayspecproviderconfigrefpolicy)|Policies for referencing.||
### InternetgatewayspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[InternetgatewayspecpublishconnectiondetailstoConfigref](#internetgatewayspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[InternetgatewayspecpublishconnectiondetailstoMetadata](#internetgatewayspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### InternetgatewayspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### InternetgatewayspecforproviderTagsitem

Tag defines a tag

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key** `required`|str|Key is the name of the tag.||
|**value** `required`|str|Value is the value of the tag.||
### InternetgatewayspecforproviderVpcidref

VPCIDRef references a VPC to and retrieves its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[InternetgatewayspecforprovidervpcidrefPolicy](#internetgatewayspecforprovidervpcidrefpolicy)|Policies for referencing.||
### InternetgatewayspecforproviderVpcidselector

VPCIDSelector selects a reference to a VPC to and retrieves its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[InternetgatewayspecforprovidervpcidselectorPolicy](#internetgatewayspecforprovidervpcidselectorpolicy)|Policies for selection.||
### InternetgatewayspecforprovidervpcidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### InternetgatewayspecforprovidervpcidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### InternetgatewayspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### InternetgatewayspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[InternetgatewayspecpublishconnectiondetailstoconfigrefPolicy](#internetgatewayspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### InternetgatewayspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### InternetgatewayspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### InternetgatewaystatusAtprovider

InternetGatewayObservation keeps the state for the external resource

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**attachments**|[[InternetgatewaystatusatproviderAttachmentsitem](#internetgatewaystatusatproviderattachmentsitem)]|Any VPCs attached to the internet gateway.||
|**internetGatewayId** `required`|str|The ID of the internet gateway.||
|**ownerID** `required`|str|The ID of the AWS account that owns the internet gateway.||
### InternetgatewaystatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### InternetgatewaystatusatproviderAttachmentsitem

InternetGatewayAttachment describes the attachment of a VPC to an internet gateway or an egress-only internet gateway.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**attachmentStatus** `required`|"available" | "attaching" | "attached" | "detaching" | "detached"|The current state of the attachment. For an internet gateway, the state<br />is available when attached to a VPC; otherwise, this value is not<br />returned.||
|**vpcId** `required`|str|VPCID is the ID of the attached VPC.||
### Natgateway

A NATGateway is a managed resource that represents an AWS VPC NAT Gateway.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"NATGateway"|
|**metadata**|any|No description available.||
|**spec** `required`|[NatgatewaySpec](#natgatewayspec)|NATGatewaySpec defines the desired state of a NAT Gateway||
|**status**|[NatgatewayStatus](#natgatewaystatus)|NATGatewayStatus describes the observed state||
### NatgatewaySpec

NATGatewaySpec defines the desired state of a NAT Gateway

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[NatgatewayspecForprovider](#natgatewayspecforprovider)|NATGatewayParameters defined the desired state of an AWS VPC NAT Gateway||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[NatgatewayspecProviderconfigref](#natgatewayspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[NatgatewayspecPublishconnectiondetailsto](#natgatewayspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[NatgatewayspecWriteconnectionsecrettoref](#natgatewayspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### NatgatewayStatus

NATGatewayStatus describes the observed state

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[NatgatewaystatusAtprovider](#natgatewaystatusatprovider)|NATGatewayObservation keeps the state for the CR||
|**conditions**|[[NatgatewaystatusConditionsitem](#natgatewaystatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### NatgatewayspecForprovider

NATGatewayParameters defined the desired state of an AWS VPC NAT Gateway

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**allocationId**|str|AllocationID is the Elastic IP allocation ID||
|**allocationIdRef**|[NatgatewayspecforproviderAllocationidref](#natgatewayspecforproviderallocationidref)|AllocationIDRef references an EIP and retrieves it's allocation id||
|**allocationIdSelector**|[NatgatewayspecforproviderAllocationidselector](#natgatewayspecforproviderallocationidselector)|AllocationIDSelector references an EIP by selector and retrieves it's allocation id||
|**connectivityType**|"public" | "private"|Indicates whether the NAT gateway supports public or private connectivity. The<br />default is public connectivity.||
|**region** `required`|str|Region is the region you'd like your NATGateway to be created in.||
|**subnetId**|str|SubnetID is the subnet the NAT gateways needs to be associated to||
|**subnetIdRef**|[NatgatewayspecforproviderSubnetidref](#natgatewayspecforprovidersubnetidref)|SubnetIDRef references a subnet and retrives it's subnet id||
|**subnetIdSelector**|[NatgatewayspecforproviderSubnetidselector](#natgatewayspecforprovidersubnetidselector)|SubnetIDSelector references a subnet by selector and retrives it's subnet id||
|**tags**|[[NatgatewayspecforproviderTagsitem](#natgatewayspecforprovidertagsitem)]|Tags represents to current ec2 tags.||
### NatgatewayspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[NatgatewayspecproviderconfigrefPolicy](#natgatewayspecproviderconfigrefpolicy)|Policies for referencing.||
### NatgatewayspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[NatgatewayspecpublishconnectiondetailstoConfigref](#natgatewayspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[NatgatewayspecpublishconnectiondetailstoMetadata](#natgatewayspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### NatgatewayspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### NatgatewayspecforproviderAllocationidref

AllocationIDRef references an EIP and retrieves it's allocation id

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[NatgatewayspecforproviderallocationidrefPolicy](#natgatewayspecforproviderallocationidrefpolicy)|Policies for referencing.||
### NatgatewayspecforproviderAllocationidselector

AllocationIDSelector references an EIP by selector and retrieves it's allocation id

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[NatgatewayspecforproviderallocationidselectorPolicy](#natgatewayspecforproviderallocationidselectorpolicy)|Policies for selection.||
### NatgatewayspecforproviderSubnetidref

SubnetIDRef references a subnet and retrives it's subnet id

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[NatgatewayspecforprovidersubnetidrefPolicy](#natgatewayspecforprovidersubnetidrefpolicy)|Policies for referencing.||
### NatgatewayspecforproviderSubnetidselector

SubnetIDSelector references a subnet by selector and retrives it's subnet id

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[NatgatewayspecforprovidersubnetidselectorPolicy](#natgatewayspecforprovidersubnetidselectorpolicy)|Policies for selection.||
### NatgatewayspecforproviderTagsitem

Tag defines a tag

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key** `required`|str|Key is the name of the tag.||
|**value** `required`|str|Value is the value of the tag.||
### NatgatewayspecforproviderallocationidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### NatgatewayspecforproviderallocationidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### NatgatewayspecforprovidersubnetidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### NatgatewayspecforprovidersubnetidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### NatgatewayspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### NatgatewayspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[NatgatewayspecpublishconnectiondetailstoconfigrefPolicy](#natgatewayspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### NatgatewayspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### NatgatewayspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### NatgatewaystatusAtprovider

NATGatewayObservation keeps the state for the CR

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**createTime**|str|No description available.||
|**deleteTime**|str|No description available.||
|**failureCode**|str|No description available.||
|**failureMessage**|str|No description available.||
|**natGatewayAddresses**|[[NatgatewaystatusatproviderNatgatewayaddressesitem](#natgatewaystatusatprovidernatgatewayaddressesitem)]|No description available.||
|**natGatewayId**|str|No description available.||
|**state**|str|No description available.||
|**vpcId**|str|No description available.||
### NatgatewaystatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### NatgatewaystatusatproviderNatgatewayaddressesitem

NATGatewayAddress describes the details of network

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**allocationId**|str|No description available.||
|**networkInterfaceId**|str|No description available.||
|**privateIp**|str|No description available.||
|**publicIp**|str|No description available.||
### Routetable

A RouteTable is a managed resource that represents an AWS VPC Route Table.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"RouteTable"|
|**metadata**|any|No description available.||
|**spec** `required`|[RoutetableSpec](#routetablespec)|A RouteTableSpec defines the desired state of a RouteTable.||
|**status**|[RoutetableStatus](#routetablestatus)|A RouteTableStatus represents the observed state of a RouteTable.||
### RoutetableSpec

A RouteTableSpec defines the desired state of a RouteTable.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[RoutetablespecForprovider](#routetablespecforprovider)|RouteTableParameters define the desired state of an AWS VPC Route Table.||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[RoutetablespecProviderconfigref](#routetablespecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[RoutetablespecPublishconnectiondetailsto](#routetablespecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[RoutetablespecWriteconnectionsecrettoref](#routetablespecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### RoutetableStatus

A RouteTableStatus represents the observed state of a RouteTable.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[RoutetablestatusAtprovider](#routetablestatusatprovider)|RouteTableObservation keeps the state for the external resource||
|**conditions**|[[RoutetablestatusConditionsitem](#routetablestatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### RoutetablespecForprovider

RouteTableParameters define the desired state of an AWS VPC Route Table.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**associations** `required`|[[RoutetablespecforproviderAssociationsitem](#routetablespecforproviderassociationsitem)]|The associations between the route table and one or more subnets.||
|**ignoreRoutes**|bool|Indicates whether we reconcile inline routes||
|**region** `required`|str|Region is the region you'd like your VPC to be created in.||
|**routes**|[[RoutetablespecforproviderRoutesitem](#routetablespecforproviderroutesitem)]|inline routes in the route table<br />Deprecated: Routes inline exists for historical compatibility<br />and should not be used. Please use separate route resource.||
|**tags**|[[RoutetablespecforproviderTagsitem](#routetablespecforprovidertagsitem)]|Tags represents to current ec2 tags.||
|**vpcId**|str|VPCID is the ID of the VPC.||
|**vpcIdRef**|[RoutetablespecforproviderVpcidref](#routetablespecforprovidervpcidref)|VPCIDRef references a VPC to retrieve its vpcId||
|**vpcIdSelector**|[RoutetablespecforproviderVpcidselector](#routetablespecforprovidervpcidselector)|VPCIDSelector selects a reference to a VPC to retrieve its vpcId||
### RoutetablespecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RoutetablespecproviderconfigrefPolicy](#routetablespecproviderconfigrefpolicy)|Policies for referencing.||
### RoutetablespecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[RoutetablespecpublishconnectiondetailstoConfigref](#routetablespecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[RoutetablespecpublishconnectiondetailstoMetadata](#routetablespecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### RoutetablespecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### RoutetablespecforproviderAssociationsitem

Association describes an association between a route table and a subnet.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**subnetId**|str|The ID of the subnet. A subnet ID is not returned for an implicit<br />association.||
|**subnetIdRef**|[RoutetablespecforproviderassociationsitemSubnetidref](#routetablespecforproviderassociationsitemsubnetidref)|A referencer to retrieve the ID of a subnet||
|**subnetIdSelector**|[RoutetablespecforproviderassociationsitemSubnetidselector](#routetablespecforproviderassociationsitemsubnetidselector)|A selector to select a referencer to retrieve the ID of a subnet||
### RoutetablespecforproviderRoutesitem

RouteBeta describes a route in a route table. provider-aws currently provides both a standalone Route resource and a RouteTable resource with routes defined in-line. At this time you cannot use a Route Table with in-line routes in conjunction with any Route resources. Doing so will cause a conflict of rule settings and will overwrite rules.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**destinationCidrBlock**|str|The IPv4 CIDR address block used for the destination match. Routing<br />decisions are based on the most specific match.||
|**destinationIpv6CidrBlock**|str|The IPv6 CIDR address block used for the destination match. Routing<br />decisions are based on the most specific match.||
|**egressOnlyInternetGatewayId**|str|[IPv6 traffic only] The ID of an egress-only internet gateway.||
|**gatewayId**|str|The ID of an internet gateway or virtual private gateway attached to your<br />VPC.||
|**gatewayIdRef**|[RoutetablespecforproviderroutesitemGatewayidref](#routetablespecforproviderroutesitemgatewayidref)|A referencer to retrieve the ID of a gateway||
|**gatewayIdSelector**|[RoutetablespecforproviderroutesitemGatewayidselector](#routetablespecforproviderroutesitemgatewayidselector)|A selector to select a referencer to retrieve the ID of a gateway||
|**instanceId**|str|The ID of a NAT instance in your VPC. The operation fails if you specify<br />an instance ID unless exactly one network interface is attached.||
|**localGatewayId**|str|The ID of the local gateway.||
|**natGatewayId**|str|[IPv4 traffic only] The ID of a NAT gateway.||
|**natGatewayIdRef**|[RoutetablespecforproviderroutesitemNatgatewayidref](#routetablespecforproviderroutesitemnatgatewayidref)|A referencer to retrieve the ID of a NAT gateway||
|**natGatewayIdSelector**|[RoutetablespecforproviderroutesitemNatgatewayidselector](#routetablespecforproviderroutesitemnatgatewayidselector)|A selector to select a referencer to retrieve the ID of a NAT gateway||
|**networkInterfaceId**|str|The ID of a network interface.||
|**transitGatewayId**|str|The ID of a transit gateway.||
|**vpcPeeringConnectionId**|str|The ID of a VPC peering connection.||
### RoutetablespecforproviderTagsitem

Tag defines a tag

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key** `required`|str|Key is the name of the tag.||
|**value** `required`|str|Value is the value of the tag.||
### RoutetablespecforproviderVpcidref

VPCIDRef references a VPC to retrieve its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RoutetablespecforprovidervpcidrefPolicy](#routetablespecforprovidervpcidrefpolicy)|Policies for referencing.||
### RoutetablespecforproviderVpcidselector

VPCIDSelector selects a reference to a VPC to retrieve its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[RoutetablespecforprovidervpcidselectorPolicy](#routetablespecforprovidervpcidselectorpolicy)|Policies for selection.||
### RoutetablespecforproviderassociationsitemSubnetidref

A referencer to retrieve the ID of a subnet

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RoutetablespecforproviderassociationsitemsubnetidrefPolicy](#routetablespecforproviderassociationsitemsubnetidrefpolicy)|Policies for referencing.||
### RoutetablespecforproviderassociationsitemSubnetidselector

A selector to select a referencer to retrieve the ID of a subnet

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[RoutetablespecforproviderassociationsitemsubnetidselectorPolicy](#routetablespecforproviderassociationsitemsubnetidselectorpolicy)|Policies for selection.||
### RoutetablespecforproviderassociationsitemsubnetidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecforproviderassociationsitemsubnetidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecforproviderroutesitemGatewayidref

A referencer to retrieve the ID of a gateway

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RoutetablespecforproviderroutesitemgatewayidrefPolicy](#routetablespecforproviderroutesitemgatewayidrefpolicy)|Policies for referencing.||
### RoutetablespecforproviderroutesitemGatewayidselector

A selector to select a referencer to retrieve the ID of a gateway

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[RoutetablespecforproviderroutesitemgatewayidselectorPolicy](#routetablespecforproviderroutesitemgatewayidselectorpolicy)|Policies for selection.||
### RoutetablespecforproviderroutesitemNatgatewayidref

A referencer to retrieve the ID of a NAT gateway

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RoutetablespecforproviderroutesitemnatgatewayidrefPolicy](#routetablespecforproviderroutesitemnatgatewayidrefpolicy)|Policies for referencing.||
### RoutetablespecforproviderroutesitemNatgatewayidselector

A selector to select a referencer to retrieve the ID of a NAT gateway

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[RoutetablespecforproviderroutesitemnatgatewayidselectorPolicy](#routetablespecforproviderroutesitemnatgatewayidselectorpolicy)|Policies for selection.||
### RoutetablespecforproviderroutesitemgatewayidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecforproviderroutesitemgatewayidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecforproviderroutesitemnatgatewayidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecforproviderroutesitemnatgatewayidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecforprovidervpcidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecforprovidervpcidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablespecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RoutetablespecpublishconnectiondetailstoconfigrefPolicy](#routetablespecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### RoutetablespecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### RoutetablespecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RoutetablestatusAtprovider

RouteTableObservation keeps the state for the external resource

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**associations**|[[RoutetablestatusatproviderAssociationsitem](#routetablestatusatproviderassociationsitem)]|The actual associations created for the route table.||
|**ownerId**|str|The ID of the AWS account that owns the route table.||
|**routeTableId**|str|RouteTableID is the ID of the RouteTable.||
|**routes**|[[RoutetablestatusatproviderRoutesitem](#routetablestatusatproviderroutesitem)]|The actual routes created for the route table.||
### RoutetablestatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### RoutetablestatusatproviderAssociationsitem

AssociationState describes an association state in the route table.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**associationId**|str|The ID of the association between a route table and a subnet.||
|**main** `required`|bool|Indicates whether this is the main route table.||
|**state**|str|The state of the association.||
|**subnetId**|str|The ID of the subnet. A subnet ID is not returned for an implicit<br />association.||
### RoutetablestatusatproviderRoutesitem

RouteState describes a route state in the route table.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**destinationCidrBlock**|str|The IPv4 CIDR address block used for the destination match. Routing<br />decisions are based on the most specific match.||
|**destinationIpv6CidrBlock**|str|The IPv6 CIDR address block used for the destination match. Routing<br />decisions are based on the most specific match.||
|**gatewayId**|str|The ID of an internet gateway or virtual private gateway attached to your<br />VPC.||
|**instanceId**|str|The ID of a NAT instance in your VPC. The operation fails if you specify<br />an instance ID unless exactly one network interface is attached.||
|**localGatewayId**|str|The ID of the local gateway.||
|**natGatewayId**|str|[IPv4 traffic only] The ID of a NAT gateway.||
|**networkInterfaceId**|str|The ID of a network interface.||
|**state**|str|The state of the route. The blackhole state indicates that the route's<br />target isn't available (for example, the specified gateway isn't attached<br />to the VPC, or the specified NAT instance has been terminated).||
|**transitGatewayId**|str|The ID of a transit gateway.||
|**vpcPeeringConnectionId**|str|The ID of a VPC peering connection.||
### Securitygroup

A SecurityGroup is a managed resource that represents an AWS VPC Security Group.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"SecurityGroup"|
|**metadata**|any|No description available.||
|**spec** `required`|[SecuritygroupSpec](#securitygroupspec)|A SecurityGroupSpec defines the desired state of a SecurityGroup.||
|**status**|[SecuritygroupStatus](#securitygroupstatus)|A SecurityGroupStatus represents the observed state of a SecurityGroup.||
### SecuritygroupSpec

A SecurityGroupSpec defines the desired state of a SecurityGroup.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[SecuritygroupspecForprovider](#securitygroupspecforprovider)|SecurityGroupParameters define the desired state of an AWS VPC Security<br />Group.||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[SecuritygroupspecProviderconfigref](#securitygroupspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[SecuritygroupspecPublishconnectiondetailsto](#securitygroupspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[SecuritygroupspecWriteconnectionsecrettoref](#securitygroupspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### SecuritygroupStatus

A SecurityGroupStatus represents the observed state of a SecurityGroup.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[SecuritygroupstatusAtprovider](#securitygroupstatusatprovider)|SecurityGroupObservation keeps the state for the external resource||
|**conditions**|[[SecuritygroupstatusConditionsitem](#securitygroupstatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### SecuritygroupspecForprovider

SecurityGroupParameters define the desired state of an AWS VPC Security Group.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**description** `required`|str|A description of the security group.||
|**egress**|[[SecuritygroupspecforproviderEgressitem](#securitygroupspecforprovideregressitem)]|[EC2-VPC] One or more outbound rules associated with the security group.||
|**groupName** `required`|str|The name of the security group.||
|**ignoreEgress**|bool|Dont manage the egress settings for the created resource||
|**ignoreIngress**|bool|Dont manage the ingress settings for the created resource||
|**ingress**|[[SecuritygroupspecforproviderIngressitem](#securitygroupspecforprovideringressitem)]|One or more inbound rules associated with the security group.||
|**region** `required`|str|Region is the region you'd like your SecurityGroup to be created in.||
|**tags**|[[SecuritygroupspecforproviderTagsitem](#securitygroupspecforprovidertagsitem)]|Tags represents to current ec2 tags.||
|**vpcId**|str|VPCID is the ID of the VPC.||
|**vpcIdRef**|[SecuritygroupspecforproviderVpcidref](#securitygroupspecforprovidervpcidref)|VPCIDRef references a VPC to and retrieves its vpcId||
|**vpcIdSelector**|[SecuritygroupspecforproviderVpcidselector](#securitygroupspecforprovidervpcidselector)|VPCIDSelector selects a reference to a VPC to and retrieves its vpcId||
### SecuritygroupspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SecuritygroupspecproviderconfigrefPolicy](#securitygroupspecproviderconfigrefpolicy)|Policies for referencing.||
### SecuritygroupspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[SecuritygroupspecpublishconnectiondetailstoConfigref](#securitygroupspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[SecuritygroupspecpublishconnectiondetailstoMetadata](#securitygroupspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### SecuritygroupspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### SecuritygroupspecforproviderEgressitem

IPPermission Describes a set of permissions for a security group rule.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**fromPort**|int|The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6<br />type number. A value of -1 indicates all ICMP/ICMPv6 types. If you specify<br />all ICMP/ICMPv6 types, you must specify all codes.||
|**ipProtocol** `required`|str|The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers<br />(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).<br /><br />[VPC only] Use -1 to specify all protocols. When authorizing security group<br />rules, specifying -1 or a protocol number other than tcp, udp, icmp, or icmpv6<br />allows traffic on all ports, regardless of any port range you specify. For<br />tcp, udp, and icmp, you must specify a port range. For icmpv6, the port range<br />is optional; if you omit the port range, traffic for all types and codes<br />is allowed.||
|**ipRanges**|[[SecuritygroupspecforprovideregressitemIprangesitem](#securitygroupspecforprovideregressitemiprangesitem)]|The IPv4 ranges.||
|**ipv6Ranges**|[[SecuritygroupspecforprovideregressitemIpv6Rangesitem](#securitygroupspecforprovideregressitemipv6rangesitem)]|The IPv6 ranges.<br /><br />[VPC only]||
|**prefixListIds**|[[SecuritygroupspecforprovideregressitemPrefixlistidsitem](#securitygroupspecforprovideregressitemprefixlistidsitem)]|PrefixListIDs for an AWS service. With outbound rules, this<br />is the AWS service to access through a VPC endpoint from instances associated<br />with the security group.<br /><br />[VPC only]||
|**toPort**|int|The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.<br />A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6<br />types, you must specify all codes.||
|**userIdGroupPairs**|[[SecuritygroupspecforprovideregressitemUseridgrouppairsitem](#securitygroupspecforprovideregressitemuseridgrouppairsitem)]|UserIDGroupPairs are the source security group and AWS account ID pairs.<br />It contains one or more accounts and security groups to allow flows from<br />security groups of other accounts.||
### SecuritygroupspecforproviderIngressitem

IPPermission Describes a set of permissions for a security group rule.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**fromPort**|int|The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6<br />type number. A value of -1 indicates all ICMP/ICMPv6 types. If you specify<br />all ICMP/ICMPv6 types, you must specify all codes.||
|**ipProtocol** `required`|str|The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers<br />(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).<br /><br />[VPC only] Use -1 to specify all protocols. When authorizing security group<br />rules, specifying -1 or a protocol number other than tcp, udp, icmp, or icmpv6<br />allows traffic on all ports, regardless of any port range you specify. For<br />tcp, udp, and icmp, you must specify a port range. For icmpv6, the port range<br />is optional; if you omit the port range, traffic for all types and codes<br />is allowed.||
|**ipRanges**|[[SecuritygroupspecforprovideringressitemIprangesitem](#securitygroupspecforprovideringressitemiprangesitem)]|The IPv4 ranges.||
|**ipv6Ranges**|[[SecuritygroupspecforprovideringressitemIpv6Rangesitem](#securitygroupspecforprovideringressitemipv6rangesitem)]|The IPv6 ranges.<br /><br />[VPC only]||
|**prefixListIds**|[[SecuritygroupspecforprovideringressitemPrefixlistidsitem](#securitygroupspecforprovideringressitemprefixlistidsitem)]|PrefixListIDs for an AWS service. With outbound rules, this<br />is the AWS service to access through a VPC endpoint from instances associated<br />with the security group.<br /><br />[VPC only]||
|**toPort**|int|The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.<br />A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6<br />types, you must specify all codes.||
|**userIdGroupPairs**|[[SecuritygroupspecforprovideringressitemUseridgrouppairsitem](#securitygroupspecforprovideringressitemuseridgrouppairsitem)]|UserIDGroupPairs are the source security group and AWS account ID pairs.<br />It contains one or more accounts and security groups to allow flows from<br />security groups of other accounts.||
### SecuritygroupspecforproviderTagsitem

Tag defines a tag

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key** `required`|str|Key is the name of the tag.||
|**value** `required`|str|Value is the value of the tag.||
### SecuritygroupspecforproviderVpcidref

VPCIDRef references a VPC to and retrieves its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SecuritygroupspecforprovidervpcidrefPolicy](#securitygroupspecforprovidervpcidrefpolicy)|Policies for referencing.||
### SecuritygroupspecforproviderVpcidselector

VPCIDSelector selects a reference to a VPC to and retrieves its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[SecuritygroupspecforprovidervpcidselectorPolicy](#securitygroupspecforprovidervpcidselectorpolicy)|Policies for selection.||
### SecuritygroupspecforprovideregressitemIprangesitem

IPRange describes an IPv4 range.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**cidrIp** `required`|str|The IPv4 CIDR range. You can either specify a CIDR range or a source security<br />group, not both. To specify a single IPv4 address, use the /32 prefix length.||
|**description**|str|A description for the security group rule that references this IPv4 address<br />range.<br /><br />Constraints: Up to 255 characters in length. Allowed characters are a-z,<br />A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*||
### SecuritygroupspecforprovideregressitemIpv6Rangesitem

IPv6Range describes an IPv6 range.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**cidrIPv6** `required`|str|The IPv6 CIDR range. You can either specify a CIDR range or a source security<br />group, not both. To specify a single IPv6 address, use the /128 prefix length.||
|**description**|str|A description for the security group rule that references this IPv6 address<br />range.<br /><br />Constraints: Up to 255 characters in length. Allowed characters are a-z,<br />A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*||
### SecuritygroupspecforprovideregressitemPrefixlistidsitem

PrefixListID describes a prefix list ID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**description**|str|A description for the security group rule that references this prefix list<br />ID.<br /><br />Constraints: Up to 255 characters in length. Allowed characters are a-z,<br />A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*||
|**prefixListId** `required`|str|The ID of the prefix.||
### SecuritygroupspecforprovideregressitemUseridgrouppairsitem

UserIDGroupPair describes a security group and AWS account ID pair.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**description**|str|A description for the security group rule that references this user ID group<br />pair.<br /><br />Constraints: Up to 255 characters in length. Allowed characters are a-z,<br />A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*||
|**groupId**|str|The ID of the security group.||
|**groupIdRef**|[SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidref](#securitygroupspecforprovideregressitemuseridgrouppairsitemgroupidref)|GroupIDRef reference a security group to retrieve its GroupID||
|**groupIdSelector**|[SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidselector](#securitygroupspecforprovideregressitemuseridgrouppairsitemgroupidselector)|GroupIDSelector selects reference to a security group to retrieve its GroupID||
|**groupName**|str|The name of the security group. In a request, use this parameter for a security<br />group in EC2-Classic or a default VPC only. For a security group in a nondefault<br />VPC, use the security group ID.<br /><br />For a referenced security group in another VPC, this value is not returned<br />if the referenced security group is deleted.||
|**userId**|str|The ID of an AWS account.<br /><br />For a referenced security group in another VPC, the account ID of the referenced<br />security group is returned in the response. If the referenced security group<br />is deleted, this value is not returned.<br /><br />[EC2-Classic] Required when adding or removing rules that reference a security<br />group in another AWS account.||
|**vpcId**|str|The ID of the VPC for the referenced security group, if applicable.||
|**vpcIdRef**|[SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidref](#securitygroupspecforprovideregressitemuseridgrouppairsitemvpcidref)|VPCIDRef reference a VPC to retrieve its vpcId||
|**vpcIdSelector**|[SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidselector](#securitygroupspecforprovideregressitemuseridgrouppairsitemvpcidselector)|VPCIDSelector selects reference to a VPC to retrieve its vpcId||
|**vpcPeeringConnectionId**|str|The ID of the VPC peering connection, if applicable.||
### SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidref

GroupIDRef reference a security group to retrieve its GroupID

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidrefPolicy](#securitygroupspecforprovideregressitemuseridgrouppairsitemgroupidrefpolicy)|Policies for referencing.||
### SecuritygroupspecforprovideregressitemuseridgrouppairsitemGroupidselector

GroupIDSelector selects reference to a security group to retrieve its GroupID

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidselectorPolicy](#securitygroupspecforprovideregressitemuseridgrouppairsitemgroupidselectorpolicy)|Policies for selection.||
### SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidref

VPCIDRef reference a VPC to retrieve its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidrefPolicy](#securitygroupspecforprovideregressitemuseridgrouppairsitemvpcidrefpolicy)|Policies for referencing.||
### SecuritygroupspecforprovideregressitemuseridgrouppairsitemVpcidselector

VPCIDSelector selects reference to a VPC to retrieve its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidselectorPolicy](#securitygroupspecforprovideregressitemuseridgrouppairsitemvpcidselectorpolicy)|Policies for selection.||
### SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovideregressitemuseridgrouppairsitemgroupidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovideregressitemuseridgrouppairsitemvpcidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovideringressitemIprangesitem

IPRange describes an IPv4 range.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**cidrIp** `required`|str|The IPv4 CIDR range. You can either specify a CIDR range or a source security<br />group, not both. To specify a single IPv4 address, use the /32 prefix length.||
|**description**|str|A description for the security group rule that references this IPv4 address<br />range.<br /><br />Constraints: Up to 255 characters in length. Allowed characters are a-z,<br />A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*||
### SecuritygroupspecforprovideringressitemIpv6Rangesitem

IPv6Range describes an IPv6 range.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**cidrIPv6** `required`|str|The IPv6 CIDR range. You can either specify a CIDR range or a source security<br />group, not both. To specify a single IPv6 address, use the /128 prefix length.||
|**description**|str|A description for the security group rule that references this IPv6 address<br />range.<br /><br />Constraints: Up to 255 characters in length. Allowed characters are a-z,<br />A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*||
### SecuritygroupspecforprovideringressitemPrefixlistidsitem

PrefixListID describes a prefix list ID.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**description**|str|A description for the security group rule that references this prefix list<br />ID.<br /><br />Constraints: Up to 255 characters in length. Allowed characters are a-z,<br />A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*||
|**prefixListId** `required`|str|The ID of the prefix.||
### SecuritygroupspecforprovideringressitemUseridgrouppairsitem

UserIDGroupPair describes a security group and AWS account ID pair.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**description**|str|A description for the security group rule that references this user ID group<br />pair.<br /><br />Constraints: Up to 255 characters in length. Allowed characters are a-z,<br />A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*||
|**groupId**|str|The ID of the security group.||
|**groupIdRef**|[SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidref](#securitygroupspecforprovideringressitemuseridgrouppairsitemgroupidref)|GroupIDRef reference a security group to retrieve its GroupID||
|**groupIdSelector**|[SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidselector](#securitygroupspecforprovideringressitemuseridgrouppairsitemgroupidselector)|GroupIDSelector selects reference to a security group to retrieve its GroupID||
|**groupName**|str|The name of the security group. In a request, use this parameter for a security<br />group in EC2-Classic or a default VPC only. For a security group in a nondefault<br />VPC, use the security group ID.<br /><br />For a referenced security group in another VPC, this value is not returned<br />if the referenced security group is deleted.||
|**userId**|str|The ID of an AWS account.<br /><br />For a referenced security group in another VPC, the account ID of the referenced<br />security group is returned in the response. If the referenced security group<br />is deleted, this value is not returned.<br /><br />[EC2-Classic] Required when adding or removing rules that reference a security<br />group in another AWS account.||
|**vpcId**|str|The ID of the VPC for the referenced security group, if applicable.||
|**vpcIdRef**|[SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidref](#securitygroupspecforprovideringressitemuseridgrouppairsitemvpcidref)|VPCIDRef reference a VPC to retrieve its vpcId||
|**vpcIdSelector**|[SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidselector](#securitygroupspecforprovideringressitemuseridgrouppairsitemvpcidselector)|VPCIDSelector selects reference to a VPC to retrieve its vpcId||
|**vpcPeeringConnectionId**|str|The ID of the VPC peering connection, if applicable.||
### SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidref

GroupIDRef reference a security group to retrieve its GroupID

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidrefPolicy](#securitygroupspecforprovideringressitemuseridgrouppairsitemgroupidrefpolicy)|Policies for referencing.||
### SecuritygroupspecforprovideringressitemuseridgrouppairsitemGroupidselector

GroupIDSelector selects reference to a security group to retrieve its GroupID

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidselectorPolicy](#securitygroupspecforprovideringressitemuseridgrouppairsitemgroupidselectorpolicy)|Policies for selection.||
### SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidref

VPCIDRef reference a VPC to retrieve its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidrefPolicy](#securitygroupspecforprovideringressitemuseridgrouppairsitemvpcidrefpolicy)|Policies for referencing.||
### SecuritygroupspecforprovideringressitemuseridgrouppairsitemVpcidselector

VPCIDSelector selects reference to a VPC to retrieve its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidselectorPolicy](#securitygroupspecforprovideringressitemuseridgrouppairsitemvpcidselectorpolicy)|Policies for selection.||
### SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovideringressitemuseridgrouppairsitemgroupidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovideringressitemuseridgrouppairsitemvpcidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovidervpcidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecforprovidervpcidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SecuritygroupspecpublishconnectiondetailstoconfigrefPolicy](#securitygroupspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### SecuritygroupspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### SecuritygroupspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SecuritygroupstatusAtprovider

SecurityGroupObservation keeps the state for the external resource

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**egressRules**|[[SecuritygroupstatusatproviderEgressrulesitem](#securitygroupstatusatprovideregressrulesitem)]|EgressRules of the observed SecurityGroup.||
|**ingressRules**|[[SecuritygroupstatusatproviderIngressrulesitem](#securitygroupstatusatprovideringressrulesitem)]|IngressRules of the observed SecurityGroup.||
|**ownerId** `required`|str|The AWS account ID of the owner of the security group.||
|**securityGroupID** `required`|str|SecurityGroupID is the ID of the SecurityGroup.||
### SecuritygroupstatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### SecuritygroupstatusatproviderEgressrulesitem

SecuritygroupstatusatproviderEgressrulesitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**cidrIpv4**|str|CidrIpv4 range.||
|**cidrIpv6**|str|CidrIpv6 range.||
|**description**|str|Description of this rule.||
|**fromPort**|int|The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type. A<br />value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6<br />types, you must specify all codes.||
|**id**|str|ID of the security group rule.||
|**ipProtocol**|str|The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers<br />(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). Use<br />-1 to specify all protocols.||
|**prefixListId**|str|The ID of the prefix list.||
|**referencedGroupInfo**|[SecuritygroupstatusatprovideregressrulesitemReferencedgroupinfo](#securitygroupstatusatprovideregressrulesitemreferencedgroupinfo)|Describes the security group that is referenced in the rule.||
|**toPort**|int|The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A<br />value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6<br />types, you must specify all codes.||
### SecuritygroupstatusatproviderIngressrulesitem

SecuritygroupstatusatproviderIngressrulesitem schema.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**cidrIpv4**|str|CidrIpv4 range.||
|**cidrIpv6**|str|CidrIpv6 range.||
|**description**|str|Description of this rule.||
|**fromPort**|int|The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type. A<br />value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6<br />types, you must specify all codes.||
|**id**|str|ID of the security group rule.||
|**ipProtocol**|str|The IP protocol name (tcp, udp, icmp, icmpv6) or number (see Protocol Numbers<br />(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). Use<br />-1 to specify all protocols.||
|**prefixListId**|str|The ID of the prefix list.||
|**referencedGroupInfo**|[SecuritygroupstatusatprovideringressrulesitemReferencedgroupinfo](#securitygroupstatusatprovideringressrulesitemreferencedgroupinfo)|Describes the security group that is referenced in the rule.||
|**toPort**|int|The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A<br />value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6<br />types, you must specify all codes.||
### SecuritygroupstatusatprovideregressrulesitemReferencedgroupinfo

Describes the security group that is referenced in the rule.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**groupId**|str|The ID of the security group.||
|**peeringStatus**|str|The status of a VPC peering connection, if applicable.||
|**userId**|str|The Amazon Web Services account ID.||
|**vpcId**|str|The ID of the VPC.||
|**vpcPeeringConnectionId**|str|The ID of the VPC peering connection.||
### SecuritygroupstatusatprovideringressrulesitemReferencedgroupinfo

Describes the security group that is referenced in the rule.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**groupId**|str|The ID of the security group.||
|**peeringStatus**|str|The status of a VPC peering connection, if applicable.||
|**userId**|str|The Amazon Web Services account ID.||
|**vpcId**|str|The ID of the VPC.||
|**vpcPeeringConnectionId**|str|The ID of the VPC peering connection.||
### Subnet

A Subnet is a managed resource that represents an AWS VPC Subnet.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"Subnet"|
|**metadata**|any|No description available.||
|**spec** `required`|[SubnetSpec](#subnetspec)|A SubnetSpec defines the desired state of a Subnet.||
|**status**|[SubnetStatus](#subnetstatus)|A SubnetStatus represents the observed state of a Subnet.||
### SubnetSpec

A SubnetSpec defines the desired state of a Subnet.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[SubnetspecForprovider](#subnetspecforprovider)|SubnetParameters define the desired state of an AWS VPC Subnet.||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[SubnetspecProviderconfigref](#subnetspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[SubnetspecPublishconnectiondetailsto](#subnetspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[SubnetspecWriteconnectionsecrettoref](#subnetspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### SubnetStatus

A SubnetStatus represents the observed state of a Subnet.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[SubnetstatusAtprovider](#subnetstatusatprovider)|SubnetObservation keeps the state for the external resource||
|**conditions**|[[SubnetstatusConditionsitem](#subnetstatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### SubnetspecForprovider

SubnetParameters define the desired state of an AWS VPC Subnet.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**assignIpv6AddressOnCreation**|bool|Indicates whether a network interface created in this subnet (including a<br />network interface created by RunInstances) receives an IPv6 address.||
|**availabilityZone**|str|The Availability Zone for the subnet.<br />Default: AWS selects one for you. If you create more than one subnet in your<br />VPC, we may not necessarily select a different zone for each subnet.||
|**availabilityZoneId**|str|The AZ ID or the Local Zone ID of the subnet.||
|**cidrBlock** `required`|str|CIDRBlock is the IPv4 network range for the Subnet, in CIDR notation. For example, 10.0.0.0/18.||
|**ipv6CIDRBlock**|str|The IPv6 network range for the subnet, in CIDR notation. The subnet size<br />must use a /64 prefix length.||
|**mapPublicIPOnLaunch**|bool|Indicates whether instances launched in this subnet receive a public IPv4<br />address.||
|**region**|str|Region is the region you'd like your Subnet to be created in.||
|**tags**|[[SubnetspecforproviderTagsitem](#subnetspecforprovidertagsitem)]|Tags represents to current ec2 tags.||
|**vpcId**|str|VPCID is the ID of the VPC.||
|**vpcIdRef**|[SubnetspecforproviderVpcidref](#subnetspecforprovidervpcidref)|VPCIDRef reference a VPC to retrieve its vpcId||
|**vpcIdSelector**|[SubnetspecforproviderVpcidselector](#subnetspecforprovidervpcidselector)|VPCIDSelector selects reference to a VPC to retrieve its vpcId||
### SubnetspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SubnetspecproviderconfigrefPolicy](#subnetspecproviderconfigrefpolicy)|Policies for referencing.||
### SubnetspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[SubnetspecpublishconnectiondetailstoConfigref](#subnetspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[SubnetspecpublishconnectiondetailstoMetadata](#subnetspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### SubnetspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### SubnetspecforproviderTagsitem

Tag defines a tag

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key** `required`|str|Key is the name of the tag.||
|**value** `required`|str|Value is the value of the tag.||
### SubnetspecforproviderVpcidref

VPCIDRef reference a VPC to retrieve its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SubnetspecforprovidervpcidrefPolicy](#subnetspecforprovidervpcidrefpolicy)|Policies for referencing.||
### SubnetspecforproviderVpcidselector

VPCIDSelector selects reference to a VPC to retrieve its vpcId

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[SubnetspecforprovidervpcidselectorPolicy](#subnetspecforprovidervpcidselectorpolicy)|Policies for selection.||
### SubnetspecforprovidervpcidrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SubnetspecforprovidervpcidselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SubnetspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SubnetspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[SubnetspecpublishconnectiondetailstoconfigrefPolicy](#subnetspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### SubnetspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### SubnetspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### SubnetstatusAtprovider

SubnetObservation keeps the state for the external resource

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**availableIpAddressCount**|int|The number of unused private IPv4 addresses in the subnet.||
|**defaultForAz**|bool|Indicates whether this is the default subnet for the Availability Zone.||
|**subnetId**|str|SubnetID is the ID of the Subnet.||
|**subnetState**|"pending" | "available"|SubnetState is the current state of the Subnet.||
### SubnetstatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### Vpc

A VPC is a managed resource that represents an AWS Virtual Private Cloud.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"VPC"|
|**metadata**|any|No description available.||
|**spec** `required`|[VpcSpec](#vpcspec)|A VPCSpec defines the desired state of a VPC.||
|**status**|[VpcStatus](#vpcstatus)|A VPCStatus represents the observed state of a VPC.||
### VpcSpec

A VPCSpec defines the desired state of a VPC.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[VpcspecForprovider](#vpcspecforprovider)|VPCParameters define the desired state of an AWS Virtual Private Cloud.||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[VpcspecProviderconfigref](#vpcspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[VpcspecPublishconnectiondetailsto](#vpcspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[VpcspecWriteconnectionsecrettoref](#vpcspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### VpcStatus

A VPCStatus represents the observed state of a VPC.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[VpcstatusAtprovider](#vpcstatusatprovider)|VPCObservation keeps the state for the external resource||
|**conditions**|[[VpcstatusConditionsitem](#vpcstatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### VpcspecForprovider

VPCParameters define the desired state of an AWS Virtual Private Cloud.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**amazonProvidedIpv6CidrBlock**|bool|Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the<br />VPC. You cannot specify the range of IP addresses, or the size of the CIDR<br />block.||
|**cidrBlock** `required`|str|CIDRBlock is the IPv4 network range for the VPC, in CIDR notation. For<br />example, 10.0.0.0/16.||
|**enableDnsHostNames**|bool|Indicates whether the instances launched in the VPC get DNS hostnames.||
|**enableDnsSupport**|bool|A boolean flag to enable/disable DNS support in the VPC||
|**enableNetworkAddressUsageMetrics**|bool|Enables Network Address Usage (nau) monitoring for this VPC.||
|**instanceTenancy**|str|The allowed tenancy of instances launched into the VPC.||
|**ipv6CidrBlock**|str|The IPv6 CIDR block from the IPv6 address pool. You must also specify Ipv6Pool<br />in the request. To let Amazon choose the IPv6 CIDR block for you, omit this<br />parameter.||
|**ipv6Pool**|str|The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.||
|**region**|str|Region is the region you'd like your VPC to be created in.||
|**tags**|[[VpcspecforproviderTagsitem](#vpcspecforprovidertagsitem)]|Tags are used as identification helpers between AWS resources.||
### VpcspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[VpcspecproviderconfigrefPolicy](#vpcspecproviderconfigrefpolicy)|Policies for referencing.||
### VpcspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[VpcspecpublishconnectiondetailstoConfigref](#vpcspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[VpcspecpublishconnectiondetailstoMetadata](#vpcspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### VpcspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### VpcspecforproviderTagsitem

Tag defines a tag

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key** `required`|str|Key is the name of the tag.||
|**value** `required`|str|Value is the value of the tag.||
### VpcspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[VpcspecpublishconnectiondetailstoconfigrefPolicy](#vpcspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### VpcspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### VpcspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### VpcstatusAtprovider

VPCObservation keeps the state for the external resource

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**cidrBlockAssociationSet**|[[VpcstatusatproviderCidrblockassociationsetitem](#vpcstatusatprovidercidrblockassociationsetitem)]|Information about the IPv4 CIDR blocks associated with the VPC.||
|**dhcpOptionsId**|str|The ID of the set of DHCP options you've associated with the VPC.||
|**ipv6CidrBlockAssociationSet**|[[VpcstatusatproviderIpv6Cidrblockassociationsetitem](#vpcstatusatprovideripv6cidrblockassociationsetitem)]|Information about the IPv6 CIDR blocks associated with the VPC.||
|**isDefault**|bool|Indicates whether the VPC is the default VPC.||
|**ownerId**|str|The ID of the AWS account that owns the VPC.||
|**vpcId**|str|The ID of the VPC.||
|**vpcState**|str|VPCState is the current state of the VPC.||
### VpcstatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### VpcstatusatproviderCidrblockassociationsetitem

VPCCIDRBlockAssociation represents the association of IPv4 CIDR blocks with the VPC.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**associationId**|str|The association ID for the IPv4 CIDR block.||
|**cidrBlock**|str|The IPv4 CIDR block.||
|**cidrBlockState**|[VpcstatusatprovidercidrblockassociationsetitemCidrblockstate](#vpcstatusatprovidercidrblockassociationsetitemcidrblockstate)|Information about the state of the CIDR block.||
### VpcstatusatproviderIpv6Cidrblockassociationsetitem

VPCIPv6CidrBlockAssociation represents the association of IPv6 CIDR blocks with the VPC.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**associationId**|str|The association ID for the IPv6 CIDR block.||
|**ipv6CidrBlock**|str|The IPv6 CIDR block.||
|**ipv6CidrBlockState**|[Vpcstatusatprovideripv6CidrblockassociationsetitemIpv6Cidrblockstate](#vpcstatusatprovideripv6cidrblockassociationsetitemipv6cidrblockstate)|Information about the state of the CIDR block.||
|**ipv6Pool**|str|The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.||
|**networkBorderGroup**|str|The name of the location from which we advertise the IPV6 CIDR block.||
### VpcstatusatprovidercidrblockassociationsetitemCidrblockstate

Information about the state of the CIDR block.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**state**|str|The state of the CIDR block.||
|**statusMessage**|str|A message about the status of the CIDR block, if applicable.||
### Vpcstatusatprovideripv6CidrblockassociationsetitemIpv6Cidrblockstate

Information about the state of the CIDR block.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**state**|str|The state of the CIDR block.||
|**statusMessage**|str|A message about the status of the CIDR block, if applicable.||
### Role

A Role is a managed resource that represents an AWS IAM Role.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"iam.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"Role"|
|**metadata**|any|No description available.||
|**spec** `required`|[RoleSpec](#rolespec)|A RoleSpec defines the desired state of a Role.||
|**status**|[RoleStatus](#rolestatus)|A RoleStatus represents the observed state of a Role.||
### RoleSpec

A RoleSpec defines the desired state of a Role.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[RolespecForprovider](#rolespecforprovider)|RoleParameters define the desired state of an AWS IAM Role.||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[RolespecProviderconfigref](#rolespecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[RolespecPublishconnectiondetailsto](#rolespecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[RolespecWriteconnectionsecrettoref](#rolespecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### RoleStatus

A RoleStatus represents the observed state of a Role.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[RolestatusAtprovider](#rolestatusatprovider)|RoleExternalStatus keeps the state for the external resource||
|**conditions**|[[RolestatusConditionsitem](#rolestatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### Rolepolicyattachment

A RolePolicyAttachment is a managed resource that represents an AWS IAM Role policy attachment.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"iam.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"RolePolicyAttachment"|
|**metadata**|any|No description available.||
|**spec** `required`|[RolepolicyattachmentSpec](#rolepolicyattachmentspec)|A RolePolicyAttachmentSpec defines the desired state of an<br />RolePolicyAttachment.||
|**status**|[RolepolicyattachmentStatus](#rolepolicyattachmentstatus)|A RolePolicyAttachmentStatus represents the observed state of an<br />RolePolicyAttachment.||
### RolepolicyattachmentSpec

A RolePolicyAttachmentSpec defines the desired state of an RolePolicyAttachment.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**deletionPolicy**|"Orphan" | "Delete"|DeletionPolicy specifies what will happen to the underlying external<br />when this managed resource is deleted - either "Delete" or "Orphan" the<br />external resource.<br />This field is planned to be deprecated in favor of the ManagementPolicies<br />field in a future release. Currently, both could be set independently and<br />non-default values would be honored if the feature flag is enabled.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223||
|**forProvider** `required`|[RolepolicyattachmentspecForprovider](#rolepolicyattachmentspecforprovider)|RolePolicyAttachmentParameters define the desired state of an AWS IAM<br />Role policy attachment.||
|**managementPolicies**|["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]|THIS IS A BETA FIELD. It is on by default but can be opted out<br />through a Crossplane feature flag.<br />ManagementPolicies specify the array of actions Crossplane is allowed to<br />take on the managed and external resources.<br />This field is planned to replace the DeletionPolicy field in a future<br />release. Currently, both could be set independently and non-default<br />values would be honored if the feature flag is enabled. If both are<br />custom, the DeletionPolicy field will be ignored.<br />See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223<br />and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md||
|**providerConfigRef**|[RolepolicyattachmentspecProviderconfigref](#rolepolicyattachmentspecproviderconfigref)|ProviderConfigReference specifies how the provider that will be used to<br />create, observe, update, and delete this managed resource should be<br />configured.||
|**publishConnectionDetailsTo**|[RolepolicyattachmentspecPublishconnectiondetailsto](#rolepolicyattachmentspecpublishconnectiondetailsto)|PublishConnectionDetailsTo specifies the connection secret config which<br />contains a name, metadata and a reference to secret store config to<br />which any connection details for this managed resource should be written.<br />Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.||
|**writeConnectionSecretToRef**|[RolepolicyattachmentspecWriteconnectionsecrettoref](#rolepolicyattachmentspecwriteconnectionsecrettoref)|WriteConnectionSecretToReference specifies the namespace and name of a<br />Secret to which any connection details for this managed resource should<br />be written. Connection details frequently include the endpoint, username,<br />and password required to connect to the managed resource.<br />This field is planned to be replaced in a future release in favor of<br />PublishConnectionDetailsTo. Currently, both could be set independently<br />and connection details would be published to both without affecting<br />each other.||
### RolepolicyattachmentStatus

A RolePolicyAttachmentStatus represents the observed state of an RolePolicyAttachment.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**atProvider**|[RolepolicyattachmentstatusAtprovider](#rolepolicyattachmentstatusatprovider)|RolePolicyAttachmentExternalStatus keeps the state for the external resource||
|**conditions**|[[RolepolicyattachmentstatusConditionsitem](#rolepolicyattachmentstatusconditionsitem)]|Conditions of the resource.||
|**observedGeneration**|int|ObservedGeneration is the latest metadata.generation<br />which resulted in either a ready state, or stalled due to error<br />it can not recover from without human intervention.||
### RolepolicyattachmentspecForprovider

RolePolicyAttachmentParameters define the desired state of an AWS IAM Role policy attachment.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**policyArn**|str|PolicyARN is the Amazon Resource Name (ARN) of the IAM policy you want to<br />attach.||
|**policyArnRef**|[RolepolicyattachmentspecforproviderPolicyarnref](#rolepolicyattachmentspecforproviderpolicyarnref)|PolicyARNRef references a Policy to retrieve its Policy ARN.||
|**policyArnSelector**|[RolepolicyattachmentspecforproviderPolicyarnselector](#rolepolicyattachmentspecforproviderpolicyarnselector)|PolicyARNSelector selects a reference to a Policy to retrieve its<br />Policy ARN||
|**roleName**|str|RoleName presents the name of the IAM role.||
|**roleNameRef**|[RolepolicyattachmentspecforproviderRolenameref](#rolepolicyattachmentspecforproviderrolenameref)|RoleNameRef references a Role to retrieve its Name||
|**roleNameSelector**|[RolepolicyattachmentspecforproviderRolenameselector](#rolepolicyattachmentspecforproviderrolenameselector)|RoleNameSelector selects a reference to a Role to retrieve its Name||
### RolepolicyattachmentspecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RolepolicyattachmentspecproviderconfigrefPolicy](#rolepolicyattachmentspecproviderconfigrefpolicy)|Policies for referencing.||
### RolepolicyattachmentspecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[RolepolicyattachmentspecpublishconnectiondetailstoConfigref](#rolepolicyattachmentspecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[RolepolicyattachmentspecpublishconnectiondetailstoMetadata](#rolepolicyattachmentspecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### RolepolicyattachmentspecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### RolepolicyattachmentspecforproviderPolicyarnref

PolicyARNRef references a Policy to retrieve its Policy ARN.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RolepolicyattachmentspecforproviderpolicyarnrefPolicy](#rolepolicyattachmentspecforproviderpolicyarnrefpolicy)|Policies for referencing.||
### RolepolicyattachmentspecforproviderPolicyarnselector

PolicyARNSelector selects a reference to a Policy to retrieve its Policy ARN

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[RolepolicyattachmentspecforproviderpolicyarnselectorPolicy](#rolepolicyattachmentspecforproviderpolicyarnselectorpolicy)|Policies for selection.||
### RolepolicyattachmentspecforproviderRolenameref

RoleNameRef references a Role to retrieve its Name

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RolepolicyattachmentspecforproviderrolenamerefPolicy](#rolepolicyattachmentspecforproviderrolenamerefpolicy)|Policies for referencing.||
### RolepolicyattachmentspecforproviderRolenameselector

RoleNameSelector selects a reference to a Role to retrieve its Name

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**matchControllerRef**|bool|MatchControllerRef ensures an object with the same controller reference<br />as the selecting object is selected.||
|**matchLabels**|{str:str}|MatchLabels ensures an object with matching labels is selected.||
|**policy**|[RolepolicyattachmentspecforproviderrolenameselectorPolicy](#rolepolicyattachmentspecforproviderrolenameselectorpolicy)|Policies for selection.||
### RolepolicyattachmentspecforproviderpolicyarnrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RolepolicyattachmentspecforproviderpolicyarnselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RolepolicyattachmentspecforproviderrolenamerefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RolepolicyattachmentspecforproviderrolenameselectorPolicy

Policies for selection.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RolepolicyattachmentspecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RolepolicyattachmentspecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RolepolicyattachmentspecpublishconnectiondetailstoconfigrefPolicy](#rolepolicyattachmentspecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### RolepolicyattachmentspecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### RolepolicyattachmentspecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RolepolicyattachmentstatusAtprovider

RolePolicyAttachmentExternalStatus keeps the state for the external resource

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**attachedPolicyArn** `required`|str|AttachedPolicyARN is the arn for the attached policy. If nil, the policy<br />is not yet attached||
### RolepolicyattachmentstatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### RolespecForprovider

RoleParameters define the desired state of an AWS IAM Role.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**assumeRolePolicyDocument** `required`|str|AssumeRolePolicyDocument is the the trust relationship policy document<br />that grants an entity permission to assume the role.||
|**description**|str|Description is a description of the role.||
|**maxSessionDuration**|int|MaxSessionDuration is the duration (in seconds) that you want to set for the specified<br />role. The default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.<br />Default: 3600||
|**path**|str|Path is the path to the role.<br />Default: /||
|**permissionsBoundary**|str|PermissionsBoundary is the ARN of the policy that is used to set the permissions boundary for the role.||
|**tags**|[[RolespecforproviderTagsitem](#rolespecforprovidertagsitem)]|Tags. For more information about<br />tagging, see Tagging IAM Identities (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)<br />in the IAM User Guide.||
### RolespecProviderconfigref

ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RolespecproviderconfigrefPolicy](#rolespecproviderconfigrefpolicy)|Policies for referencing.||
### RolespecPublishconnectiondetailsto

PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**configRef**|[RolespecpublishconnectiondetailstoConfigref](#rolespecpublishconnectiondetailstoconfigref)|SecretStoreConfigRef specifies which secret store config should be used<br />for this ConnectionSecret.||
|**metadata**|[RolespecpublishconnectiondetailstoMetadata](#rolespecpublishconnectiondetailstometadata)|Metadata is the metadata for connection secret.||
|**name** `required`|str|Name is the name of the connection secret.||
### RolespecWriteconnectionsecrettoref

WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the secret.||
|**namespace** `required`|str|Namespace of the secret.||
### RolespecforproviderTagsitem

Tag represents user-provided metadata that can be associated with a IAM role. For more information about tagging, see Tagging IAM Identities (https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the IAM User Guide.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**key** `required`|str|The key name that can be used to look up or retrieve the associated value.<br />For example, Department or Cost Center are common choices.||
|**value**|str|The value associated with this tag. For example, tags with a key name of<br />Department could have values such as Human Resources, Accounting, and Support.<br />Tags with a key name of Cost Center might have values that consist of the<br />number associated with the different cost centers in your company. Typically,<br />many resources have tags with the same key name but with different values.<br /><br />AWS always interprets the tag Value as a single string. If you need to store<br />an array, you can store comma-separated values in the string. However, you<br />must interpret the value in your code.||
### RolespecproviderconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RolespecpublishconnectiondetailstoConfigref

SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**name** `required`|str|Name of the referenced object.||
|**policy**|[RolespecpublishconnectiondetailstoconfigrefPolicy](#rolespecpublishconnectiondetailstoconfigrefpolicy)|Policies for referencing.||
### RolespecpublishconnectiondetailstoMetadata

Metadata is the metadata for connection secret.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**annotations**|{str:str}|Annotations are the annotations to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.annotations".<br />- It is up to Secret Store implementation for others store types.||
|**labels**|{str:str}|Labels are the labels/tags to be added to connection secret.<br />- For Kubernetes secrets, this will be used as "metadata.labels".<br />- It is up to Secret Store implementation for others store types.||
|**type**|str|Type is the SecretType for the connection secret.<br />- Only valid for Kubernetes Secret Stores.||
### RolespecpublishconnectiondetailstoconfigrefPolicy

Policies for referencing.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**resolution**|"Required" | "Optional"|Resolution specifies whether resolution of this reference is required.<br />The default is 'Required', which means the reconcile will fail if the<br />reference cannot be resolved. 'Optional' means this reference will be<br />a no-op if it cannot be resolved.||
|**resolve**|"Always" | "IfNotPresent"|Resolve specifies when this reference should be resolved. The default<br />is 'IfNotPresent', which will attempt to resolve the reference only when<br />the corresponding field is not present. Use 'Always' to resolve the<br />reference on every reconcile.||
### RolestatusAtprovider

RoleExternalStatus keeps the state for the external resource

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**arn** `required`|str|ARN is the Amazon Resource Name (ARN) specifying the role. For more information<br />about ARNs and how to use them in policies, see IAM Identifiers (http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)<br />in the IAM User Guide guide.||
|**createDate**|str|The date and time, in ISO 8601 date-time format<br />(http://www.iso.org/iso/iso8601), when the role was created.||
|**roleID** `required`|str|RoleID is the stable and unique string identifying the role. For more information about<br />IDs, see IAM Identifiers (http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)<br />in the Using IAM guide.||
|**roleLastUsed**|[RolestatusatproviderRolelastused](#rolestatusatproviderrolelastused)|Contains information about the last time that an IAM role was used. This<br />includes the date and time and the Region in which the role was last used.<br />Activity is only reported for the trailing 400 days. This period can be shorter<br />if your Region began supporting these features within the last year. The role<br />might have been used more than 400 days ago. For more information, see Regions<br />where data is tracked<br />(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)<br />in the IAM User Guide.||
### RolestatusConditionsitem

A Condition that may apply to a resource.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastTransitionTime** `required`|str|LastTransitionTime is the last time this condition transitioned from one<br />status to another.||
|**message**|str|A Message containing details about this condition's last transition from<br />one status to another, if any.||
|**observedGeneration**|int|ObservedGeneration represents the .metadata.generation that the condition was set based upon.<br />For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date<br />with respect to the current state of the instance.||
|**reason** `required`|str|A Reason for this condition's last transition from one status to another.||
|**status** `required`|str|Status of this condition; is it currently True, False, or Unknown?||
|**type** `required`|str|Type of this condition. At most one of each condition type may apply to<br />a resource at any point in time.||
### RolestatusatproviderRolelastused

Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see Regions where data is tracked (https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period) in the IAM User Guide.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**lastUsedDate**|str|The date and time, in ISO 8601 date-time format (http://www.iso.org/iso/iso8601)<br />that the role was last used. This field is null if the role has not been used<br />within the IAM tracking period. For more information about the tracking period,<br />see Regions where data is tracked<br />(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)<br />in the IAM User Guide.||
|**region**|str|The name of the Amazon Web Services Region in which the role was last used.||
### AddressBlueprint

Este Blueprint simplifica la creación de un recurso Address, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_address**|str|||
|**_customerOwnedIPv4Pool**|str|||
|**_domain**|"vpc" | "standard"|||
|**_labels**|{str:str}|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_publicIpv4Pool**|str|||
|**_region** `required`|str|||
|**_tags**|{str:str}|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"Address"|
|**metadata**|any|No description available.||
|**spec** `required`|[AddressSpec](#addressspec)|An AddressSpec defines the desired state of an Address.||
|**status**|[AddressStatus](#addressstatus)|An AddressStatus represents the observed state of an Address.||
### FlowlogBlueprint

Este Blueprint simplifica la creación de un recurso Flowlog, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_clientToken**|str|||
|**_cloudWatchLogDestination**|str|||
|**_cloudWatchLogDestinationRef**|[FlowlogspecforproviderCloudwatchlogdestinationref](#flowlogspecforprovidercloudwatchlogdestinationref)|||
|**_cloudWatchLogDestinationSelector**|[FlowlogspecforproviderCloudwatchlogdestinationselector](#flowlogspecforprovidercloudwatchlogdestinationselector)|||
|**_deliverCrossAccountRole**|str|||
|**_deliverLogsPermissionArn**|str|||
|**_deliverLogsPermissionArnRef**|[FlowlogspecforproviderDeliverlogspermissionarnref](#flowlogspecforproviderdeliverlogspermissionarnref)|||
|**_deliverLogsPermissionArnSelector**|[FlowlogspecforproviderDeliverlogspermissionarnselector](#flowlogspecforproviderdeliverlogspermissionarnselector)|||
|**_destinationOptions**|[FlowlogspecforproviderDestinationoptions](#flowlogspecforproviderdestinationoptions)|||
|**_labels**|{str:str}|||
|**_logDestination**|str|||
|**_logDestinationType**|str|||
|**_logFormat**|str|||
|**_logGroupName**|str|||
|**_maxAggregationInterval**|int|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_networkInterfaceId**|str|||
|**_providerConfig** `required`|str|||
|**_region** `required`|str|||
|**_resourceIDs**|[str]|||
|**_resourceType**|str|||
|**_s3BucketLogDestination**|str|||
|**_s3BucketLogDestinationRef**|[FlowlogspecforproviderS3Bucketlogdestinationref](#flowlogspecforproviders3bucketlogdestinationref)|||
|**_s3BucketLogDestinationSelector**|[FlowlogspecforproviderS3Bucketlogdestinationselector](#flowlogspecforproviders3bucketlogdestinationselector)|||
|**_s3BucketSubfolder**|str|||
|**_subnetId**|str|||
|**_subnetIdRef**|[FlowlogspecforproviderSubnetidref](#flowlogspecforprovidersubnetidref)|||
|**_subnetIdSelector**|[FlowlogspecforproviderSubnetidselector](#flowlogspecforprovidersubnetidselector)|||
|**_tags**|{str:str}|||
|**_trafficType**|str|||
|**_transitGatewayAttachmentId**|str|||
|**_transitGatewayAttachmentIdRef**|[FlowlogspecforproviderTransitgatewayattachmentidref](#flowlogspecforprovidertransitgatewayattachmentidref)|||
|**_transitGatewayAttachmentIdSelector**|[FlowlogspecforproviderTransitgatewayattachmentidselector](#flowlogspecforprovidertransitgatewayattachmentidselector)|||
|**_transitGatewayId**|str|||
|**_transitGatewayIdRef**|[FlowlogspecforproviderTransitgatewayidref](#flowlogspecforprovidertransitgatewayidref)|||
|**_transitGatewayIdSelector**|[FlowlogspecforproviderTransitgatewayidselector](#flowlogspecforprovidertransitgatewayidselector)|||
|**_vpcId**|str|||
|**_vpcIdRef**|[FlowlogspecforproviderVpcidref](#flowlogspecforprovidervpcidref)|||
|**_vpcIdSelector**|[FlowlogspecforproviderVpcidselector](#flowlogspecforprovidervpcidselector)|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1alpha1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"FlowLog"|
|**metadata**|any|No description available.||
|**spec** `required`|[FlowlogSpec](#flowlogspec)|FlowLogSpec defines the desired state of FlowLog||
|**status**|[FlowlogStatus](#flowlogstatus)|FlowLogStatus defines the observed state of FlowLog.||
### InternetgatewayBlueprint

Este Blueprint simplifica la creación de un recurso Internetgateway, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_labels**|{str:str}|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_region**|str|||
|**_tags**|{str:str}|||
|**_vpcId**|str|||
|**_vpcIdRef**|[InternetgatewayspecforproviderVpcidref](#internetgatewayspecforprovidervpcidref)|||
|**_vpcIdSelector**|[InternetgatewayspecforproviderVpcidselector](#internetgatewayspecforprovidervpcidselector)|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"InternetGateway"|
|**metadata**|any|No description available.||
|**spec** `required`|[InternetgatewaySpec](#internetgatewayspec)|An InternetGatewaySpec defines the desired state of an InternetGateway.||
|**status**|[InternetgatewayStatus](#internetgatewaystatus)|An InternetGatewayStatus represents the observed state of an InternetGateway.||
### LoggroupBlueprint

Este Blueprint simplifica la creación de un recurso Loggroup, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_kmsKeyID**|str|||
|**_kmsKeyIDRef**|[LoggroupspecforproviderKmskeyidref](#loggroupspecforproviderkmskeyidref)|||
|**_kmsKeyIDSelector**|[LoggroupspecforproviderKmskeyidselector](#loggroupspecforproviderkmskeyidselector)|||
|**_labels**|{str:str}|||
|**_logGroupName** `required`|str|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_region** `required`|str|||
|**_retentionInDays**|int|||
|**_tags**|{str:str}|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"cloudwatchlogs.aws.crossplane.io/v1alpha1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"LogGroup"|
|**metadata**|any|No description available.||
|**spec** `required`|[LoggroupSpec](#loggroupspec)|LogGroupSpec defines the desired state of LogGroup||
|**status**|[LoggroupStatus](#loggroupstatus)|LogGroupStatus defines the observed state of LogGroup.||
### NatgatewayBlueprint

Este Blueprint simplifica la creación de un recurso Natgateway, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_allocationId**|str|||
|**_allocationIdRef**|[NatgatewayspecforproviderAllocationidref](#natgatewayspecforproviderallocationidref)|||
|**_allocationIdSelector**|[NatgatewayspecforproviderAllocationidselector](#natgatewayspecforproviderallocationidselector)|||
|**_connectivityType**|"public" | "private"|||
|**_labels**|{str:str}|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_region** `required`|str|||
|**_subnetId**|str|||
|**_subnetIdRef**|[NatgatewayspecforproviderSubnetidref](#natgatewayspecforprovidersubnetidref)|||
|**_subnetIdSelector**|[NatgatewayspecforproviderSubnetidselector](#natgatewayspecforprovidersubnetidselector)|||
|**_tags**|{str:str}|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"NATGateway"|
|**metadata**|any|No description available.||
|**spec** `required`|[NatgatewaySpec](#natgatewayspec)|NATGatewaySpec defines the desired state of a NAT Gateway||
|**status**|[NatgatewayStatus](#natgatewaystatus)|NATGatewayStatus describes the observed state||
### RoleBlueprint

Este Blueprint simplifica la creación de un recurso Role, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_assumeRolePolicyDocument** `required`|str|||
|**_description**|str|||
|**_labels**|{str:str}|||
|**_maxSessionDuration**|int|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_tags**|{str:str}|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"iam.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"Role"|
|**metadata**|any|No description available.||
|**spec** `required`|[RoleSpec](#rolespec)|A RoleSpec defines the desired state of a Role.||
|**status**|[RoleStatus](#rolestatus)|A RoleStatus represents the observed state of a Role.||
### RolepolicyattachmentBlueprint

Este Blueprint simplifica la creación de un recurso Rolepolicyattachment, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_labels**|{str:str}|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_policyArn**|str|||
|**_policyArnRef**|[RolepolicyattachmentspecforproviderPolicyarnref](#rolepolicyattachmentspecforproviderpolicyarnref)|||
|**_policyArnSelector**|[RolepolicyattachmentspecforproviderPolicyarnselector](#rolepolicyattachmentspecforproviderpolicyarnselector)|||
|**_providerConfig** `required`|str|||
|**_roleName**|str|||
|**_roleNameRef**|[RolepolicyattachmentspecforproviderRolenameref](#rolepolicyattachmentspecforproviderrolenameref)|||
|**_roleNameSelector**|[RolepolicyattachmentspecforproviderRolenameselector](#rolepolicyattachmentspecforproviderrolenameselector)|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"iam.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"RolePolicyAttachment"|
|**metadata**|any|No description available.||
|**spec** `required`|[RolepolicyattachmentSpec](#rolepolicyattachmentspec)|A RolePolicyAttachmentSpec defines the desired state of an<br />RolePolicyAttachment.||
|**status**|[RolepolicyattachmentStatus](#rolepolicyattachmentstatus)|A RolePolicyAttachmentStatus represents the observed state of an<br />RolePolicyAttachment.||
### RoutetableBlueprint

Este Blueprint simplifica la creación de un recurso Routetable, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_associations** `required`|[[RoutetablespecforproviderAssociationsitem](#routetablespecforproviderassociationsitem)]|||
|**_ignoreRoutes**|bool|||
|**_labels**|{str:str}|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_region** `required`|str|||
|**_routes**|[[RoutetablespecforproviderRoutesitem](#routetablespecforproviderroutesitem)]|||
|**_tags**|{str:str}|||
|**_vpcId**|str|||
|**_vpcIdRef**|[RoutetablespecforproviderVpcidref](#routetablespecforprovidervpcidref)|||
|**_vpcIdSelector**|[RoutetablespecforproviderVpcidselector](#routetablespecforprovidervpcidselector)|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"RouteTable"|
|**metadata**|any|No description available.||
|**spec** `required`|[RoutetableSpec](#routetablespec)|A RouteTableSpec defines the desired state of a RouteTable.||
|**status**|[RoutetableStatus](#routetablestatus)|A RouteTableStatus represents the observed state of a RouteTable.||
### SecuritygroupBlueprint

Este Blueprint simplifica la creación de un recurso Securitygroup, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_description** `required`|str|||
|**_egress**|[[SecuritygroupspecforproviderEgressitem](#securitygroupspecforprovideregressitem)]|||
|**_groupName** `required`|str|||
|**_ignoreEgress**|bool|||
|**_ignoreIngress**|bool|||
|**_ingress**|[[SecuritygroupspecforproviderIngressitem](#securitygroupspecforprovideringressitem)]|||
|**_labels**|{str:str}|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_region** `required`|str|||
|**_tags**|{str:str}|||
|**_vpcId**|str|||
|**_vpcIdRef**|[SecuritygroupspecforproviderVpcidref](#securitygroupspecforprovidervpcidref)|||
|**_vpcIdSelector**|[SecuritygroupspecforproviderVpcidselector](#securitygroupspecforprovidervpcidselector)|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"SecurityGroup"|
|**metadata**|any|No description available.||
|**spec** `required`|[SecuritygroupSpec](#securitygroupspec)|A SecurityGroupSpec defines the desired state of a SecurityGroup.||
|**status**|[SecuritygroupStatus](#securitygroupstatus)|A SecurityGroupStatus represents the observed state of a SecurityGroup.||
### SubnetBlueprint

Este Blueprint simplifica la creación de un recurso Subnet, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_assignIpv6AddressOnCreation**|bool|||
|**_availabilityZone**|str|||
|**_availabilityZoneId**|str|||
|**_cidrBlock** `required`|str|||
|**_ipv6CIDRBlock**|str|||
|**_labels**|{str:str}|||
|**_mapPublicIPOnLaunch**|bool|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_region**|str|||
|**_tags**|{str:str}|||
|**_vpcId**|str|||
|**_vpcIdRef**|[SubnetspecforproviderVpcidref](#subnetspecforprovidervpcidref)|||
|**_vpcIdSelector**|[SubnetspecforproviderVpcidselector](#subnetspecforprovidervpcidselector)|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"Subnet"|
|**metadata**|any|No description available.||
|**spec** `required`|[SubnetSpec](#subnetspec)|A SubnetSpec defines the desired state of a Subnet.||
|**status**|[SubnetStatus](#subnetstatus)|A SubnetStatus represents the observed state of a Subnet.||
### VpcBlueprint

Este Blueprint simplifica la creación de un recurso Vpc, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_amazonProvidedIpv6CidrBlock**|bool|||
|**_cidrBlock** `required`|str|||
|**_enableDnsHostNames**|bool|||
|**_enableDnsSupport**|bool|||
|**_enableNetworkAddressUsageMetrics**|bool|||
|**_instanceTenancy**|str|||
|**_ipv6CidrBlock**|str|||
|**_ipv6Pool**|str|||
|**_labels**|{str:str}|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_providerConfig** `required`|str|||
|**_region**|str|||
|**_tags**|{str:str}|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1beta1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"VPC"|
|**metadata**|any|No description available.||
|**spec** `required`|[VpcSpec](#vpcspec)|A VPCSpec defines the desired state of a VPC.||
|**status**|[VpcStatus](#vpcstatus)|A VPCStatus represents the observed state of a VPC.||
### VpcendpointBlueprint

Este Blueprint simplifica la creación de un recurso Vpcendpoint, exponiendo una selección inteligente de campos requeridos y opcionales comunes.

#### Attributes

| name | type | description | default value |
| --- | --- | --- | --- |
|**_dnsOptions**|[VpcendpointspecforproviderDnsoptions](#vpcendpointspecforproviderdnsoptions)|||
|**_ipAddressType**|str|||
|**_labels**|{str:str}|||
|**_name** `required`|str|||
|**_namespace**|str|||
|**_policyDocument**|str|||
|**_privateDNSEnabled**|bool|||
|**_providerConfig** `required`|str|||
|**_region** `required`|str|||
|**_routeTableIdRefs**|[[VpcendpointspecforproviderRoutetableidrefsitem](#vpcendpointspecforproviderroutetableidrefsitem)]|||
|**_routeTableIdSelector**|[VpcendpointspecforproviderRoutetableidselector](#vpcendpointspecforproviderroutetableidselector)|||
|**_routeTableIds**|[str]|||
|**_securityGroupIdRefs**|[[VpcendpointspecforproviderSecuritygroupidrefsitem](#vpcendpointspecforprovidersecuritygroupidrefsitem)]|||
|**_securityGroupIdSelector**|[VpcendpointspecforproviderSecuritygroupidselector](#vpcendpointspecforprovidersecuritygroupidselector)|||
|**_securityGroupIds**|[str]|||
|**_serviceName** `required`|str|||
|**_subnetConfigurations**|[[VpcendpointspecforproviderSubnetconfigurationsitem](#vpcendpointspecforprovidersubnetconfigurationsitem)]|||
|**_subnetIdRefs**|[[VpcendpointspecforproviderSubnetidrefsitem](#vpcendpointspecforprovidersubnetidrefsitem)]|||
|**_subnetIdSelector**|[VpcendpointspecforproviderSubnetidselector](#vpcendpointspecforprovidersubnetidselector)|||
|**_subnetIds**|[str]|||
|**_tagSpecifications**|[[VpcendpointspecforproviderTagspecificationsitem](#vpcendpointspecforprovidertagspecificationsitem)]|||
|**_tags**|{str:str}|||
|**_vpcEndpointType**|str|||
|**_vpcId**|str|||
|**_vpcIdRef**|[VpcendpointspecforproviderVpcidref](#vpcendpointspecforprovidervpcidref)|||
|**_vpcIdSelector**|[VpcendpointspecforproviderVpcidselector](#vpcendpointspecforprovidervpcidselector)|||
|**apiVersion** `required`|str|APIVersion defines the versioned schema of this representation of an object.<br />Servers should convert recognized schemas to the latest internal value, and<br />may reject unrecognized values.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources|"ec2.aws.crossplane.io/v1alpha1"|
|**kind** `required`|str|Kind is a string value representing the REST resource this object represents.<br />Servers may infer this from the endpoint the client submits requests to.<br />Cannot be updated.<br />In CamelCase.<br />More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds|"VPCEndpoint"|
|**metadata**|any|No description available.||
|**spec** `required`|[VpcendpointSpec](#vpcendpointspec)|VPCEndpointSpec defines the desired state of VPCEndpoint||
|**status**|[VpcendpointStatus](#vpcendpointstatus)|VPCEndpointStatus defines the observed state of VPCEndpoint.||
<!-- Auto generated by kcl-doc tool, please do not edit. -->

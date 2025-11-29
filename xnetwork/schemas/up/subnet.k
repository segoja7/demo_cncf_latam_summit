# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_Subnet as subnet_schema

schema SubnetBlueprint(subnet_schema.Subnet):
    """Este Blueprint simplifica la creación de un recurso Subnet,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: subnet_schema.SubnetspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: subnet_schema.SubnetspecWriteconnectionsecrettoref
    _assignIpv6AddressOnCreation?: bool
    _availabilityZone?: str
    _availabilityZoneId?: str
    _cidrBlock?: str
    _customerOwnedIpv4Pool?: str
    _enableDns64?: bool
    _enableLniAtDeviceIndex?: float
    _enableResourceNameDnsARecordOnLaunch?: bool
    _enableResourceNameDnsAaaaRecordOnLaunch?: bool
    _ipv6CidrBlock?: str
    _ipv6Native?: bool
    _mapCustomerOwnedIpOnLaunch?: bool
    _mapPublicIpOnLaunch?: bool
    _outpostArn?: str
    _privateDnsHostnameTypeOnLaunch?: str
    _region: str
    _tags?: {str:str}
    _vpcId?: str
    _vpcIdRef?: subnet_schema.SubnetspecforproviderVpcidref
    _vpcIdSelector?: subnet_schema.SubnetspecforproviderVpcidselector

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
        annotations = _annotations
        finalizers = _finalizers
    }
    spec = {
        deletionPolicy = _deletionPolicy
        initProvider = _initProvider
        managementPolicies = _managementPolicies
        writeConnectionSecretToRef = _writeConnectionSecretToRef
        forProvider = {
            assignIpv6AddressOnCreation = _assignIpv6AddressOnCreation
            availabilityZone = _availabilityZone
            availabilityZoneId = _availabilityZoneId
            cidrBlock = _cidrBlock
            customerOwnedIpv4Pool = _customerOwnedIpv4Pool
            enableDns64 = _enableDns64
            enableLniAtDeviceIndex = _enableLniAtDeviceIndex
            enableResourceNameDnsARecordOnLaunch = _enableResourceNameDnsARecordOnLaunch
            enableResourceNameDnsAaaaRecordOnLaunch = _enableResourceNameDnsAaaaRecordOnLaunch
            ipv6CidrBlock = _ipv6CidrBlock
            ipv6Native = _ipv6Native
            mapCustomerOwnedIpOnLaunch = _mapCustomerOwnedIpOnLaunch
            mapPublicIpOnLaunch = _mapPublicIpOnLaunch
            outpostArn = _outpostArn
            privateDnsHostnameTypeOnLaunch = _privateDnsHostnameTypeOnLaunch
            region = _region
            tags = _tags
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     SubnetBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _annotations = {
#             "app.kubernetes.io/name" = "example-app"
#             "app.kubernetes.io/version" = "1.0.0"
#         } # Reemplazar valor
#         _finalizers = [] # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _deletionPolicy = "example-value" # Reemplazar valor
#         _initProvider = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _managementPolicies = [] # Reemplazar valor
#         _writeConnectionSecretToRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _assignIpv6AddressOnCreation = True # Reemplazar valor
#         _availabilityZone = "example-value" # Reemplazar valor
#         _availabilityZoneId = "example-value" # Reemplazar valor
#         _cidrBlock = "example-value" # Reemplazar valor
#         _customerOwnedIpv4Pool = "example-value" # Reemplazar valor
#         _enableDns64 = True # Reemplazar valor
#         _enableLniAtDeviceIndex = 1.0 # Reemplazar valor
#         _enableResourceNameDnsARecordOnLaunch = True # Reemplazar valor
#         _enableResourceNameDnsAaaaRecordOnLaunch = True # Reemplazar valor
#         _ipv6CidrBlock = "example-value" # Reemplazar valor
#         _ipv6Native = True # Reemplazar valor
#         _mapCustomerOwnedIpOnLaunch = True # Reemplazar valor
#         _mapPublicIpOnLaunch = True # Reemplazar valor
#         _outpostArn = "example-value" # Reemplazar valor
#         _privateDnsHostnameTypeOnLaunch = "example-value" # Reemplazar valor
#         _region = "example-value" # Reemplazar valor
#         _tags = {
#             "Key": "Value"
#         } # Reemplazar valor
#         _vpcId = "example-value" # Reemplazar valor
#         _vpcIdRef = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#         _vpcIdSelector = {
#             # Configure object fields as needed
#         } # Reemplazar valor
#     }
# ]

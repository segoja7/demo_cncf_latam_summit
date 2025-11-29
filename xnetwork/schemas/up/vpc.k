# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_upbound_io.v1beta1.ec2_aws_upbound_io_v1beta1_VPC as vpc_schema

schema VpcBlueprint(vpc_schema.Vpc):
    """Este Blueprint simplifica la creación de un recurso Vpc,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _annotations?: {str:str}
    _finalizers?: [str]
    _providerConfig: str
    _deletionPolicy?: "Orphan" | "Delete"
    _initProvider?: vpc_schema.VpcspecInitprovider
    _managementPolicies?: ["Observe" | "Create" | "Update" | "Delete" | "LateInitialize" | "*"]
    _writeConnectionSecretToRef?: vpc_schema.VpcspecWriteconnectionsecrettoref
    _assignGeneratedIpv6CidrBlock?: bool
    _cidrBlock?: str
    _enableDnsHostnames?: bool
    _enableDnsSupport?: bool
    _enableNetworkAddressUsageMetrics?: bool
    _instanceTenancy?: str
    _ipv4IpamPoolId?: str
    _ipv4IpamPoolIdRef?: vpc_schema.VpcspecforproviderIpv4Ipampoolidref
    _ipv4IpamPoolIdSelector?: vpc_schema.VpcspecforproviderIpv4Ipampoolidselector
    _ipv4NetmaskLength?: float
    _ipv6CidrBlock?: str
    _ipv6CidrBlockNetworkBorderGroup?: str
    _ipv6IpamPoolId?: str
    _ipv6NetmaskLength?: float
    _region: str
    _tags?: {str:str}

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
            assignGeneratedIpv6CidrBlock = _assignGeneratedIpv6CidrBlock
            cidrBlock = _cidrBlock
            enableDnsHostnames = _enableDnsHostnames
            enableDnsSupport = _enableDnsSupport
            enableNetworkAddressUsageMetrics = _enableNetworkAddressUsageMetrics
            instanceTenancy = _instanceTenancy
            ipv4IpamPoolId = _ipv4IpamPoolId
            ipv4IpamPoolIdRef = _ipv4IpamPoolIdRef
            ipv4IpamPoolIdSelector = _ipv4IpamPoolIdSelector
            ipv4NetmaskLength = _ipv4NetmaskLength
            ipv6CidrBlock = _ipv6CidrBlock
            ipv6CidrBlockNetworkBorderGroup = _ipv6CidrBlockNetworkBorderGroup
            ipv6IpamPoolId = _ipv6IpamPoolId
            ipv6NetmaskLength = _ipv6NetmaskLength
            region = _region
            tags = _tags
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
items = [
    VpcBlueprint {
        _name = "example-value" # Reemplazar valor
        # _namespace = "example-value" # Reemplazar valor
        _labels = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
        _annotations = {
            "app.kubernetes.io/name" = "example-app"
            "app.kubernetes.io/version" = "1.0.0"
        } # Reemplazar valor
#        _finalizers = [] # Reemplazar valor
        _providerConfig = "example-value" # Reemplazar valor
#        _deletionPolicy = "example-value" # Reemplazar valor
        # _initProvider = {
        #     # Configure object fields as needed
        # } # Reemplazar valor
#        _managementPolicies = [] # Reemplazar valor
        # _writeConnectionSecretToRef = {
        #     # Configure object fields as needed
        # } # Reemplazar valor
        _assignGeneratedIpv6CidrBlock = True # Reemplazar valor
        _cidrBlock = "example-value" # Reemplazar valor
        _enableDnsHostnames = True # Reemplazar valor
        _enableDnsSupport = True # Reemplazar valor
        _enableNetworkAddressUsageMetrics = True # Reemplazar valor
        _instanceTenancy = "example-value" # Reemplazar valor
        _ipv4IpamPoolId = "example-value" # Reemplazar valor
        # _ipv4IpamPoolIdRef = {
        #     # Configure object fields as needed
        # } # Reemplazar valor
        # _ipv4IpamPoolIdSelector = {
        #     # Configure object fields as needed
        # } # Reemplazar valor
        _ipv4NetmaskLength = 1.0 # Reemplazar valor
        _ipv6CidrBlock = "example-value" # Reemplazar valor
        _ipv6CidrBlockNetworkBorderGroup = "example-value" # Reemplazar valor
        _ipv6IpamPoolId = "example-value" # Reemplazar valor
        _ipv6NetmaskLength = 1.0 # Reemplazar valor
        _region = "example-value" # Reemplazar valor
        _tags = {
            "Key": "Value"
        } # Reemplazar valor
    }
]

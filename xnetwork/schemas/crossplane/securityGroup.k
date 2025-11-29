# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.ec2_aws_crossplane_io.v1beta1.ec2_aws_crossplane_io_v1beta1_SecurityGroup as securitygroup_schema

schema SecuritygroupBlueprint(securitygroup_schema.Securitygroup):
    """Este Blueprint simplifica la creación de un recurso Securitygroup,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _description: str
    _egress?: [securitygroup_schema.SecuritygroupspecforproviderEgressitem]
    _groupName: str
    _ignoreEgress?: bool
    _ignoreIngress?: bool
    _ingress?: [securitygroup_schema.SecuritygroupspecforproviderIngressitem]
    _region: str
    _tags?: {str:str}
    _vpcId?: str
    _vpcIdRef?: securitygroup_schema.SecuritygroupspecforproviderVpcidref
    _vpcIdSelector?: securitygroup_schema.SecuritygroupspecforproviderVpcidselector

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            description = _description
            egress = _egress
            groupName = _groupName
            ignoreEgress = _ignoreEgress
            ignoreIngress = _ignoreIngress
            ingress = _ingress
            region = _region
            tags = [{"key": k, "value": v} for k, v in _tags] if _tags else []
            vpcId = _vpcId
            vpcIdRef = _vpcIdRef
            vpcIdSelector = _vpcIdSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
items = [
    SecuritygroupBlueprint {
        _name = "example-value" # Reemplazar valor
        _namespace = "example-value" # Reemplazar valor
        _labels = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
        _providerConfig = "example-value" # Reemplazar valor
        _description = "example-value" # Reemplazar valor
        _egress = [] # Reemplazar valor
        _groupName = "example-value" # Reemplazar valor
        _ignoreEgress = True # Reemplazar valor
        _ignoreIngress = True # Reemplazar valor
        _ingress = [] # Reemplazar valor
        _region = "example-value" # Reemplazar valor
        _tags = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
        _vpcId = "example-value" # Reemplazar valor
        _vpcIdRef = {
            name = "example-resource-name"
        } # Reemplazar valor
        _vpcIdSelector = {
            matchControllerRef = True
            # OR use matchLabels:
            # matchLabels = {
            #     key = "value"
            # }
        } # Reemplazar valor
    }
]

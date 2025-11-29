# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.kms_aws_crossplane_io.v1alpha1.kms_aws_crossplane_io_v1alpha1_Key as key_schema
import json
schema KeyBlueprint(key_schema.Key):
    """Este Blueprint simplifica la creación de un recurso Key,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _bypassPolicyLockoutSafetyCheck?: bool
    _customKeyStoreID?: str
    _customerMasterKeySpec?: str
    _description?: str
    _enableKeyRotation?: bool
    _enabled?: bool
    _keySpec?: str
    _keyUsage?: str
    _multiRegion?: bool
    _origin?: str
    _pendingWindowInDays?: int
    _policy?: str
    _region: str
    _tags?: {str:str}
    _xksKeyID?: str

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            bypassPolicyLockoutSafetyCheck = _bypassPolicyLockoutSafetyCheck
            customKeyStoreID = _customKeyStoreID
            customerMasterKeySpec = _customerMasterKeySpec
            description = _description
            enableKeyRotation = _enableKeyRotation
            enabled = _enabled
            keySpec = _keySpec
            keyUsage = _keyUsage
            multiRegion = _multiRegion
            origin = _origin
            pendingWindowInDays = _pendingWindowInDays
            policy = _policy
            region = _region
            tags = [{"tagKey": k, "tagValue": v} for k, v in _tags] if _tags else []
            xksKeyID = _xksKeyID
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
items = [
    KeyBlueprint {
        _name = "example-value" # Reemplazar valor
        _namespace = "example-value" # Reemplazar valor
        _labels = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
        _providerConfig = "example-value" # Reemplazar valor
        _bypassPolicyLockoutSafetyCheck = True # Reemplazar valor
        _customKeyStoreID = "example-value" # Reemplazar valor
        _customerMasterKeySpec = "example-value" # Reemplazar valor
        _description = "example-value" # Reemplazar valor
        _enableKeyRotation = True # Reemplazar valor
        _enabled = True # Reemplazar valor
        _keySpec = "example-value" # Reemplazar valor
        _keyUsage = "example-value" # Reemplazar valor
        _multiRegion = True # Reemplazar valor
        _origin = "example-value" # Reemplazar valor
        _pendingWindowInDays = 1 # Reemplazar valor
        _policy = json.encode(
                {
                    "Version": "2012-10-17",
                    "Statement": [
                        {
                            "Sid": "Enable IAM User Permissions",
                            "Effect": "Allow",
                            "Principal": {"AWS": "arn:aws:iam::123456789012:root"},
                            "Action": "kms:*",
                            "Resource": "*"
                        },
                        # {
                        #     "Sid": "Allow EKS service to use the key",
                        #     "Effect": "Allow",
                        #     "Principal": {"AWS": _cluster_role_arn},
                        #     "Action": ["kms:CreateGrant", "kms:DescribeKey"],
                        #     "Resource": "*"
                        # }
                    ]
                })
        _region = "example-value" # Reemplazar valor
        _tags = {
            Name = "example-name"
            Environment = "development"
        } # Reemplazar valor
        _xksKeyID = "example-value" # Reemplazar valor
    }
]

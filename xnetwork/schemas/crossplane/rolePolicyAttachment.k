# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

import modules.iam_aws_crossplane_io.v1beta1.iam_aws_crossplane_io_v1beta1_RolePolicyAttachment as rolepolicyattachment_schema

schema RolepolicyattachmentBlueprint(rolepolicyattachment_schema.Rolepolicyattachment):
    """Este Blueprint simplifica la creación de un recurso Rolepolicyattachment,
    exponiendo una selección inteligente de campos requeridos y opcionales comunes."""

    # Parámetros de entrada simplificados para el usuario
    _name: str
    _namespace?: str
    _labels?: {str:str}
    _providerConfig: str
    _policyArn?: str
    _policyArnRef?: rolepolicyattachment_schema.RolepolicyattachmentspecforproviderPolicyarnref
    _policyArnSelector?: rolepolicyattachment_schema.RolepolicyattachmentspecforproviderPolicyarnselector
    _roleName?: str
    _roleNameRef?: rolepolicyattachment_schema.RolepolicyattachmentspecforproviderRolenameref
    _roleNameSelector?: rolepolicyattachment_schema.RolepolicyattachmentspecforproviderRolenameselector

    # Lógica de mapeo de parámetros simples a la estructura compleja
    metadata = {
        name = _name
        namespace = _namespace
        labels = _labels
    }
    spec = {
        forProvider = {
            policyArn = _policyArn
            policyArnRef = _policyArnRef
            policyArnSelector = _policyArnSelector
            roleName = _roleName
            roleNameRef = _roleNameRef
            roleNameSelector = _roleNameSelector
        }
        providerConfigRef.name = _providerConfig
    }

# --- Ejemplo de Uso ---
# Descomenta y ajusta los valores para usar este Blueprint en tu archivo 'main.k'.
# items = [
#     RolepolicyattachmentBlueprint {
#         _name = "example-value" # Reemplazar valor
#         _namespace = "example-value" # Reemplazar valor
#         _labels = {
#             Name = "example-name"
#             Environment = "development"
#         } # Reemplazar valor
#         _providerConfig = "example-value" # Reemplazar valor
#         _policyArn = "example-value" # Reemplazar valor
#         _policyArnRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _policyArnSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#         _roleName = "example-value" # Reemplazar valor
#         _roleNameRef = {
#             name = "example-resource-name"
#         } # Reemplazar valor
#         _roleNameSelector = {
#             matchControllerRef = True
#             # OR use matchLabels:
#             # matchLabels = {
#             #     key = "value"
#             # }
#         } # Reemplazar valor
#     }
# ]

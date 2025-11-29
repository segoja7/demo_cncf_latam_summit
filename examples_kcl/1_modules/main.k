# --- Blueprint de Alto Nivel (Generado Automáticamente) ---

# mem = 1Gi
# cpu = 1
# disk = 100Gi


# schema DatabaseConfig[environment: str]:
#     host: str
#     port: int
#     user: str

#     # Policy as Code
#     check:
#         port != 5432 if environment == "production", "Security Risk: Prod DB cannot use default port 5432."


# test = DatabaseConfig("production") {
#     host = "databasehost"
#     port= 5432
#     user = "root"

# }


# import schemas.natGateway as natGateway

# natGateway.NatgatewayBlueprint {
#         _metadataName = "Mynat"
#         _providerConfig = "profile1"
#         _region = "us-east-1"
#         _tags = {
#             name = "Myname"
#         }

# }
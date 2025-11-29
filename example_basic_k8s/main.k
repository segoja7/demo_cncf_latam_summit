import pkg as resources
# import pkg.service
# import pkg.ingress
import manifests


manifests.yaml_stream([
    resources.deploy,
    resources.service,
    # resources.ingress,
])
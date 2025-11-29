import k8s.api.apps.v1 as k8sapps
import k8s.api.core.v1 as k8score

schema WebService[env: str]:
    """
    Abstracción para desplegar un WebService (Deployment + Service)
    """
    # 1. Atributos de Entrada
    name: str
    image: str
    replicas: int = 1
    port: int = 80

    # 2. Validaciones (Policy as Code)
    check:
        replicas >= 2 if env == "prod", "(min 2 replicas)."

    deployment: k8sapps.Deployment = k8sapps.Deployment {
        metadata.name = name
        metadata.labels.app = name
        spec = {
            replicas = replicas
            selector.matchLabels.app = name
            template = {
                metadata.labels.app = name
                spec.containers = [{
                    name = name
                    image = image
                    ports = [{containerPort = port}]
                }]
            }
        }
    }

    service: k8score.Service = k8score.Service {
        metadata.name = "${name}-svc"
        metadata.labels.app = name
        spec = {
            selector.app = name
            type = "NodePort"
            ports = [{
                port = port
                targetPort = port
                protocol = "TCP"
            }]
        }
    }
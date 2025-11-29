import k8s.api.apps.v1 as k8sapps
import k8s.api.core.v1 as k8score

schema WebService[env: str]:
    name: str
    image: str
    replicas: int = 1
    port: int = 80

    check:
        # Regla: En PROD, mínimo 2 réplicas
        replicas >= 2 if env == "prod", "(min 2 replicas)."

    # Lógica de Generación (Base del Iceberg)
    deployment: k8sapps.Deployment = {
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

    service: k8score.Service = {
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
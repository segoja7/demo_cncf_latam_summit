import k8s.api.core.v1 as k8score


service = k8score.Service {
    metadata = {
        name = "hello-app-svc"
        labels = {
            "app" = "hello"
        }
    }    
    spec = {
        selector = {
            "app" = "hello"
        }
        type = "NodePort"
        ports = [
            {
                name = "http"
                port = 8080
                targetPort = 8080
                protocol = "TCP"
            }
        ]
    }
}

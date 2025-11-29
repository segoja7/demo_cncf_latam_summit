import k8s.api.networking.v1 as k8snet

ingress = k8snet.Ingress {
    metadata = {
        name = "hello-app-ingress"
    }     
    spec = {
        ingressClassName = "nginx"
    
        rules = [
            {
                host = "backed-access.local"
                http = {
                    paths = [
                        {
                            path = "/"
                            pathType = "Prefix"
                            backend = {
                                service = {
                                    name = "hello-app-svc" 
                                    port = {
                                        number = 8080    
                                    }
                                }
                            }
                        }
                    ]
                }
            }
        ]
    }

}

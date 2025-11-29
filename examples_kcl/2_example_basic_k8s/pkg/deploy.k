import k8s.api.apps.v1 as k8sapps

deploy = k8sapps.Deployment {    

    metadata = {
        name = "hello-app"
        labels = {
            "app" = "hello"
        }
    }
    spec = {
        replicas = 1
        selector = {
            matchLabels = {
                "app" = "hello"
            }
        }

        template = {
            metadata = {
                labels = {
                    "app" = "hello"
                }
            }
            spec = {
                containers = [
                    {
                        name = "app"
                        image = "gcr.io/google-samples/hello-app:1.0"
                        ports = [
                            {
                                containerPort = 8080
                            }
                        ]
                    }
                ]
            }
        }
    }
}


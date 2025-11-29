import example_basic_k8s as example

# import and use of module

app_ok = example.WebService("dev") {
    name = "demo-cncf2"
    image = "nginx:latest"
    replicas = 1
}


import manifests
manifests.yaml_stream([app_ok.deployment, app_ok.service])

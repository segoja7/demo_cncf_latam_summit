import example_basic_k8s as example

# import and use of module

app_ok = example.WebService("prod") {
    name = "demo-cncf"
    image = "nginx:latest"
    replicas = 2
}


import manifests
manifests.yaml_stream([app_ok.deployment, app_ok.service])

resource "kubernetes_deployment" "app1" {
    metadata {
      name= "webdeploy23"
      labels={
        "app"="web11"
      }
    }
    spec{
        selector {
          match_labels={
            "app"="web11"
          }
        }
        replicas = 1
        template {
          metadata{
            labels={
                "app"="web11"
             }
          }
          spec {
            container{
                name="hello-pod235"
                image="mohnishbhonde/sns01"
                port {
                  container_port = 8081
                }
            }
          }
          }
        }
    }
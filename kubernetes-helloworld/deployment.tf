resource "kubernetes_deployment" "helloworld" {
    metadata {
      name = "helloworld"
    }
    spec {
      selector {
        match_labels = {
          "app" = "helloworld" 
        }
      }
    replicas = 2
    template {
      metadata {
        labels = {
          "app" = "helloworld" 
        }
      }
      spec {
        container {
          name = "helloworld"
          image = "testcontainers/helloworld"
          port {
            container_port = 80
          }
        }
      }
    }
    }
  
}
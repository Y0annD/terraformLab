resource "kubernetes_namespace" "lab-namespace" {
    metadata {
        name = var.namespace
        labels = {
          env = var.env
        }
    }
}
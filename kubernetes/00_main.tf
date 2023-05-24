variable "kubeconfig" {}
variable "kubecontext" {}
variable "namespace" {}
variable "env" {}

provider "kubernetes" {
    config_path    = var.kubeconfig
    config_context = var.kubecontext
}
variable "kubeconfig" {}
variable "kubecontext" {}
variable "namespace" {}
variable "env" {}

# Mysql
variable "mysql_chart_repository" {}
variable "mysql_chart_name" {}
variable "mysql_image" {}
variable "mysql_master_password" {}
variable "mysql_svc_name" {}

provider "kubernetes" {
    config_path    = var.kubeconfig
    config_context = var.kubecontext
}

provider "helm" {
    kubernetes {
        config_path = var.kubeconfig
    }
}
resource "helm_release" "mysql" {
    name = "mysql"

    repository = var.mysql_chart_repository
    chart      = var.mysql_chart_name

    set {
        name  = "namespaceOverride"
        value = var.namespace
    }

    set {
        name  = "image.tag"
        value = var.mysql_image
    }

    set {
        name  = "auth.rootPassword"
        value = var.mysql_master_password
    }

    set {
        name  = "primary.service.ports.mysql"
        value = var.mysql_port
    }

    set {
        name  = "mysql.primary.fullname"
        value = var.mysql_svc_name
    }
}
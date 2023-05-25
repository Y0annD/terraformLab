# Namespace where the lab will operate in cluster
namespace = "lab"
# Type of environment
env      = "development"

#####################################
# Kubernetes provider configuration #
#####################################

# kube config path 
kubeconfig  = "/etc/rancher/k3s/k3s.yaml" 
# Kube config context
kubecontext = "default"

#########
# Mysql #
#########

# Mysql helm chart repository
mysql_chart_repository = "https://charts.bitnami.com/bitnami"
# Mysql helm chart name
mysql_chart_name       = "mysql"
# Mysql image name
mysql_image            = "8.0.33"
# Mysql master password
mysql_master_password  = "password-to-change"
# Mysql port
mysql_port             = 3306

#####################################
# Mysql Kubernetes specific options #
#####################################

# Mysql service name
mysql_svc_name = "mysql"

# Lab infrastructure deployed on terraform

The aim of this project is to deploy a development lab as IAC (Infrastructure As Code) base on terraform.

The lab infrastructure will provide two deployment mode, `docker` and `kubernetes`.

The lab will be based on following elements:

- Mysql (Database for all components)
- Keycloack for SSO (Single Sign On) on all components
- SonarQube as Quality tool
- Jenkins (optionally)

# Common

# Kubernetes

## Variables

Definition of `terraform` variables:

- namespace  : namespace in which the lab will operate in cluster
- env        : type of environment, if you want to have multiple
- kubeconfig : path of kubernetes config file on system
- kubecontext: kubernetes associated context

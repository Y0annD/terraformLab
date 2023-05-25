# Lab infrastructure deployed on terraform

The aim of this project is to deploy a development lab as IAC (Infrastructure As Code) base on terraform.

The lab infrastructure will provide two deployment mode, `docker` and `kubernetes`.

The lab will be based on following elements:

- Mysql (Database for all components)
- Keycloack for SSO (Single Sign On) on all components
- SonarQube as Quality tool
- Jenkins (optionally)

# Common

## OSS Cots version

| Cots | Version |
| ---- | ------- |
| mysql | 8.0.33 | 

## Installation 

In the `docker` or `kubernetes` foler, use the following commands to deploy infrastructure:

```bash
terraform get
terraform init
terraform apply -auto-approve
```



## Variables

Common `terraform.tfvars` variables:

### Mysql
- mysql_image        : image used for mysql
- mysql_data_path    : path where mysql will be persisted on machine
- mysql_master_password: master password for mysql

# Docker

The docker installation assume the the docker instance is deployed in a distant machine.

You must have your `ssh_key` allowed in the distant machine.

## Variables

Definition of `docker` specific variables:

- ssh_user           : user used to connect the distant machine
- ssh_host           : distant machine
- ssh_hey            : ssh private key path
- ssh_port           : ssh port used on distant machine
- docker_network_name: name of the docker network use for the lab

# Kubernetes

## Variables

Definition of `kubernetes` specific variables:

- namespace  : namespace in which the lab will operate in cluster
- env        : type of environment, if you want to have multiple
- kubeconfig : path of kubernetes config file on system
- kubecontext: kubernetes associated context

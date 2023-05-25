# Variables
variable "ssh_user" {}
variable "ssh_host" {}
variable "ssh_port" {}
variable "ssh_key" {}

variable "docker_network_name" {}

variable "mysql_image" {}
variable "mysql_data_path" {}
variable "mysql_master_password" {}
variable "mysql_port" {}

# Docker provider
terraform {
    required_providers {
      docker = {
        source = "kreuzwerker/docker"
      }
    }
}

provider "docker" {
    host = "ssh://${var.ssh_user}@${var.ssh_host}:${var.ssh_port}"
}
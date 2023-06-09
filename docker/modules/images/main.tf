terraform {
    required_providers {
      docker = {
        source = "kreuzwerker/docker"
      }
    }
}

data "docker_registry_image" "image" {
    name = var.image_name
}

resource "docker_image" "image" {
    name = data.docker_registry_image.image.name
    pull_triggers = [data.docker_registry_image.image.sha256_digest]
}
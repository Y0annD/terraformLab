module "mysql" {
    source     = "./modules/images"
    image_name = var.mysql_image
}

resource "docker_volume" "mysql_data" {
    name        = "mysql_data"
    driver      = "local"
    driver_opts = {
      o      = "bind"
      type   = "none"
      device = var.mysql_data_path
    }
}

resource "docker_container" "mysql" {
    name = "mysql"
    image = module.mysql.image_id
    restart = "always"
    network_mode = "lab"
    env = [
        "MYSQL_ROOT_PASSWORD=${var.mysql_master_password}"
    ]
    networks_advanced {
        name = docker_network.lab.name
    }
    volumes {
        host_path = var.mysql_data_path
        container_path = "/var/lib/mysql"
        volume_name = docker_volume.mysql_data.name
    }
    depends_on = [ null_resource.ssh_target ]
}
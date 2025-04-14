terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

// Terraform должен знать ключ, для выполнения команд по API
// Определение переменной, которую нужно будет задать
variable "yc_token" {
  type        = string
  sensitive   = true
}

provider "yandex" {
  zone = "ru-central1-a"
  token = var.yc_token
}

resource "yandex_compute_instance" "default" {
  name        = "test"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"
  folder_id   = "b1gll1lmdjke78pqbcoq"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    disk_id = yandex_compute_disk.default.id
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.default.id}"
  }

  metadata = {
    ssh-keys = "user:${file("~/.ssh/id_rsa.pub")}"
    nat = true
  }
}

resource "yandex_vpc_network" "default" {
  folder_id = "b1gll1lmdjke78pqbcoq"
}

resource "yandex_vpc_subnet" "default" {
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["10.5.0.0/24"]
  folder_id      = "b1gll1lmdjke78pqbcoq"
}

# должен быть айпишником
# resource "yandex_vpc_address" "addr" {
#   name = "vm-adress"
#   folder_id = "b1gll1lmdjke78pqbcoq"
#   external_ipv4_address {
#     zone_id = "ru-central1-a"
#   }
# }

resource "yandex_compute_disk" "default" {
  name     = "disk-name"
  size     = 30
  type     = "network-ssd"
  zone     = "ru-central1-a"
  # Debian - fd81u2jojucn3njlptqo
  # Ubuntu - fd81r1dpns2m4mgssm0q
  image_id = "fd81u2jojucn3njlptqo" // идентификатор образа ОС
  folder_id = "b1gll1lmdjke78pqbcoq"

  labels = {
    environment = "test"
  }
}


# 
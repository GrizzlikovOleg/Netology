resource "yandex_vpc_network" "main" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "public" {
  name           = var.public_subnet_name
  zone           = var.zone
  network_id     = yandex_vpc_network.main.id
  v4_cidr_blocks = [var.public_subnet_cidr]
}

resource "yandex_vpc_subnet" "private" {
  name           = var.private_subnet_name
  zone           = var.zone
  network_id     = yandex_vpc_network.main.id
  v4_cidr_blocks = [var.private_subnet_cidr]
  route_table_id = yandex_vpc_route_table.private_routes.id
}

resource "yandex_vpc_route_table" "private_routes" {
  network_id = yandex_vpc_network.main.id

  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = var.nat_instance_internal_ip
  }
}

resource "yandex_compute_instance" "nat_instance" {
  name        = var.nat_instance_name
  platform_id = var.platform_id
  zone        = var.zone

  resources {
    cores  = var.vm_resources["cores"]
    memory = var.vm_resources["memory"]
  }

  boot_disk {
    initialize_params {
      image_id = var.nat_instance_image_id
    }
  }

  network_interface {
    subnet_id  = yandex_vpc_subnet.public.id
    ip_address = var.nat_instance_internal_ip
    nat        = true
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_key_path)}"
  }
}

resource "yandex_compute_instance" "public_vm" {
  name        = var.public_instance_name
  platform_id = var.platform_id
  zone        = var.zone

  resources {
    cores  = var.vm_resources["cores"]
    memory = var.vm_resources["memory"]
  }

  boot_disk {
    initialize_params {
      image_id = var.vm_image_id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.public.id
    nat       = true
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_key_path)}"
  }
}

resource "yandex_compute_instance" "private_vm" {
  name        = var.private_instance_name
  platform_id = var.platform_id
  zone        = var.zone

  resources {
    cores  = var.vm_resources["cores"]
    memory = var.vm_resources["memory"]
  }

  boot_disk {
    initialize_params {
      image_id = var.vm_image_id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.private.id
    nat       = false
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_key_path)}"
  }
}

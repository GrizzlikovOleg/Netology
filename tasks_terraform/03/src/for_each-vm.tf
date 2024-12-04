variable "db_vms" {
  type = list(object({
    vm_name     = string
    cpu         = number
    ram         = number
    disk_volume = number
  }))
  default = [
    { vm_name = "main", cpu = 4, ram = 8, disk_volume = 20 },
    { vm_name = "replica", cpu = 2, ram = 4, disk_volume = 10 }
  ]
}
resource "yandex_compute_instance" "db" {
  for_each = { for vm in var.db_vms : vm.vm_name => vm }

  name        = each.key
  platform_id = "standard-v3"

  resources {
    cores         = each.value.cpu
    memory        = each.value.ram
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = "fd873a4j971p8n3fkdr4"
      size      = each.value.disk_volume
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${local.ssh_public_key}"
  }

  depends_on = [yandex_vpc_subnet.develop]
}

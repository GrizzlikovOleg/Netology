# Задача 1

![Группа Безопасности](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/03/task03terraform_SecG.png)

# Задача 2

![Var](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/02/task02terraform_var.png)

<details>
  <summary>New main</summary>
  
```
resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image_family
}
resource "yandex_compute_instance" "platform" {
  name        = var.vm_web_name
  platform_id = var.vm_web_platform_id

  resources {
    cores         = var.vm_web_cores
    memory        = var.vm_web_memory
    core_fraction = var.vm_web_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_web_nat
  }

  metadata = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:${var.vms_ssh_public_root_key}"
  }

}
```

</details>

<details>
  <summary>New var</summary>
  
```
###cloud vars

#new code

#yandex_compute_image

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image of VM"
}

#yandex_compute_instance

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of VM"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "CPU cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Memory"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "% of usage"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "preemptible off/on"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Nat off/on"
}

#old code

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_public_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIONzynx0+KpSmTiPLDDRBMgmd23dgAfWODkx6hZZ7lNd admin@terraform"
  description = "ssh-keygen -t ed25519"
}
```

</details>


# Задача 3

![2vm's](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/02/task02terraform_2vms.png)

<details>
  <summary>main</summary>
  
```
resource "yandex_vpc_network" "web" {
  name = var.vpc_web_name
}
resource "yandex_vpc_network" "db" {
  name = var.vpc_db_name
}


#web

resource "yandex_vpc_subnet" "web" {
  name           = var.vpc_web_name
  zone           = var.web_zone
  network_id     = yandex_vpc_network.web.id
  v4_cidr_blocks = var.web_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image_family
}
resource "yandex_compute_instance" "platform" {
  name        = var.vm_web_name
  platform_id = var.vm_web_platform_id
  resources {
    cores         = var.vm_web_cores
    memory        = var.vm_web_memory
    core_fraction = var.vm_web_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.web.id
    nat       = var.vm_web_nat
  }
  metadata = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:${var.vms_ssh_public_root_key}"
  }

  zone = var.web_zone
}

#db

resource "yandex_vpc_subnet" "db" {
  name           = var.vpc_db_name
  zone           = var.db_zone
  network_id     = yandex_vpc_network.db.id
  v4_cidr_blocks = var.db_cidr
}

resource "yandex_compute_instance" "db" {
  name        = var.vm_db_name
  platform_id = var.vm_db_platform_id
  resources {
    cores         = var.vm_db_cores
    memory        = var.vm_db_memory
    core_fraction = var.vm_db_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_db_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.db.id
    nat       = var.vm_db_nat
  }
  metadata = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:${var.vms_ssh_public_root_key}"
  }

  zone = var.db_zone
}
```

</details>

<details>
  <summary>var</summary>
  
```
###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

###ssh vars

variable "vms_ssh_public_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIONzynx0+KpSmTiPLDDRBMgmd23dgAfWODkx6hZZ7lNd admin@terraform"
  description = "ssh-keygen -t ed25519"
}
```

</details>

<details>
  <summary>vms</summary>
  
```
###cloud vars

#web

variable "vpc_web_name" {
  type        = string
  default     = "web"
  description = "VPC network & subnet name"
}

variable "web_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image of VM"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of VM"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "CPU cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Memory"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "% of usage"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "preemptible off/on"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Nat off/on"
}

variable "web_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Zone for VM"
}

#db

variable "vpc_db_name" {
  type        = string
  default     = "db"
  description = "VPC network & subnet name"
}

variable "db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image of VM"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name of VM"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "CPU cores"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Memory"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "% of usage"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "preemptible off/on"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "Nat off/on"
}

variable "db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "Zone for VM"
}
```

</details>

# Задача 4

![2vm's](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/02/task02terraform_output.png)

# Задача 5

![2vm's](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/02/task02terraform_local.png)

<details>
  <summary>var</summary>
  
```
locals {
  vm_web_name = "${var.vm_web_name}-${var.web_zone}"
  vm_db_name = "${var.vm_db_name}-${var.db_zone}"
}
```

</details>

# Задача 6

![2vm's](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/02/task02terraform_vmsRes.png)

<details>
  <summary>Res</summary>
  
```
variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 20
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}
```

</details>

# Задача 7*

> local.test_list[1]
"staging"  

> length(local.test_list)
3  

> local.test_map["admin"]
"John"  

> "${local.test_map["admin"]} is admin for ${local.test_list[2]} server based on OS ${local.servers["production"].image} with ${local.servers["production"].cpu} vcpu, ${local.servers["production"].ram} ram and ${length(local.servers["production"].disks)} virtual disks"
"John is admin for production server based on OS ubuntu-20-04 with 10 vcpu, 40 ram and 4 virtual disks"  
 
# Задача 8*

# Задача 9*
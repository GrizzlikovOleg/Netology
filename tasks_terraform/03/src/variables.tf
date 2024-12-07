###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

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
  description = "VPC network&subnet name"
}

<<<<<<< Updated upstream
variable "hostnames" {
  type = map(string)
  default = {
    web-1    = "web1"
    web-2    = "web2"
    main     = "db-main"
    replica  = "db-replica"
    storage  = "storage"
  }
  description = "FQDN"
=======
variable "db_vms" {
  type = list(object({
    vm_name       = string
    cpu           = number
    ram           = number
    disk_volume   = number
    core_fraction = optional(number, 20)
    nat           = optional(bool, true)
    image_id      = optional(string, "fd873a4j971p8n3fkdr4")
    zone          = optional(string, "ru-central1-a")
    labels        = optional(map(string), {})
    metadata      = optional(map(string), {})
  }))
  default = [
    {
      vm_name       = "main"
      cpu           = 4
      ram           = 8
      disk_volume   = 20
      core_fraction = 50
      nat           = true
      image_id      = "fd873a4j971p8n3fkdr4"
    },
    {
      vm_name       = "replica"
      cpu           = 2
      ram           = 4
      disk_volume   = 10
      core_fraction = 20
      nat           = true
      image_id      = "fd873a4j971p8n3fkdr4"
    }
  ]
}
variable "web_instance_count" {
  type        = number
  default     = 2
}

variable "web_instance_name" {
  type        = string
  default     = "web"
}

variable "web_platform_id" {
  type        = string
  default     = "standard-v3"
}

variable "web_cores" {
  type        = number
  default     = 2
}

variable "web_memory" {
  type        = number
  default     = 2
}

variable "web_core_fraction" {
  type        = number
  default     = 20
}

variable "web_image_id" {
  type        = string
  default     = "fd873a4j971p8n3fkdr4"
>>>>>>> Stashed changes
}
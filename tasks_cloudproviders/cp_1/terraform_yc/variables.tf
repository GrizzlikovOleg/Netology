variable "cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
}

variable "zone" {
  description = "Yandex Cloud Availability Zone"
  type        = string
  default     = "ru-central1-a"
}

variable "token" {
  description = "Yandex Cloud IAM token"
  type        = string
  default     = null
}

variable "vpc_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "netology-vpc"
}

variable "public_subnet_name" {
  description = "Name of the public subnet"
  type        = string
  default     = "public-subnet"
}

variable "private_subnet_name" {
  description = "Name of the private subnet"
  type        = string
  default     = "private-subnet"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "192.168.10.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "192.168.20.0/24"
}

variable "nat_instance_name" {
  description = "Name of the NAT instance"
  type        = string
  default     = "nat-instance"
}

variable "public_instance_name" {
  description = "Name of the public instance"
  type        = string
  default     = "public-vm"
}

variable "private_instance_name" {
  description = "Name of the private instance"
  type        = string
  default     = "private-vm"
}

variable "nat_instance_internal_ip" {
  description = "Internal IP for NAT instance"
  type        = string
  default     = "192.168.10.254"
}

variable "nat_instance_image_id" {
  description = "Image ID for NAT instance"
  type        = string
  default     = "fd80mrhj8fl2oe87o4e1"
}

variable "vm_resources" {
  description = "VM resources like CPU and memory"
  type        = map(number)
  default     = {
    cores  = 2
    memory = 2
  }
}

variable "ssh_user" {
  description = "SSH user for VM access"
  type        = string
}

variable "ssh_key_path" {
  description = "Path to the SSH private key"
  type        = string
}

variable "platform_id" {
  description = "Platform ID for instances"
  type        = string
  default     = "standard-v1"
}

variable "vm_image_id" {
  description = "Image ID for VM"
  type        = string
  default     = "fd80mrhj8fl2oe87o4e1"
}
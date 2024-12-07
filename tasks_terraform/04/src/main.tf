module "vpc_dev" {
  source       = "./modules/vpc"
  vpc_name     = "develop"
  zone         = "ru-central1-a"
  v4_cidr_blocks = "10.0.1.0/24"
}

data "template_file" "cloudinit" {
  template = file("${path.module}/cloud-init.yml")

  vars = {
    username       = "ubuntu"               
    ssh_public_key = local.ssh_public_key
  }
}

module "marketing_vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "marketing"
  network_id     = module.vpc_dev.subnet_id
  subnet_zones   = ["ru-central1-a"]
  subnet_ids     = [module.vpc_dev.subnet_id]
  instance_name  = "web-marketing"
  instance_count = 2
  image_family   = "ubuntu-2004-lts"
  public_ip      = true
  labels = {
    owner   = "vasya.vasechkin"
    project = "marketing"
  }
  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = 1
  }
}

module "analytics_vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "analytics"
  network_id     = module.vpc_dev.subnet_id
  subnet_zones   = ["ru-central1-a"]
  subnet_ids     = [module.vpc_dev.subnet_id]
  instance_name  = "web-analytics"
  instance_count = 1
  image_family   = "ubuntu-2004-lts"
  public_ip      = true
  labels = {
    owner   = "petya.petichkin"
    project = "analytics"
  }
  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = 1
  }
}

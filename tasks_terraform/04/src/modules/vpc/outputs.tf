output "subnet_id" {
  value = yandex_vpc_subnet.subnet.id
}

output "subnet_cidr" {
  value = yandex_vpc_subnet.subnet.v4_cidr_blocks
}
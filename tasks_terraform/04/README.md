# Задача 1

![nginx](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_Mark0Nginx-t.png)
![nginx](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_Mark1Nginx-t.png)
![nginx](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_AnalyNginx-t.png)

![module](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_Module.png)

# Задача 2

![module](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_ModuleVPCDEV.png)

<details>
  <summary>Doca</summary>
  
```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.8.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.network](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.subnet](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_v4_cidr_blocks"></a> [v4\_cidr\_blocks](#input\_v4\_cidr\_blocks) | n/a | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_cidr"></a> [subnet\_cidr](#output\_subnet\_cidr) | n/a |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | n/a |
```

</details>

# Задача 3

![3](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_State+RM.png)
![3](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_YCID.png)
![3](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_Import1.png)
![3](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_Import2.png)
![3](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_Import3.png)
![3](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/04/task04terraform_Import4.png)
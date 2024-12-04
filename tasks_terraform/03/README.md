# Задача 1

![Группа Безопасности](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/03/task03terraform_SecG.png)

# Задача 2-4

https://github.com/GrizzlikovOleg/Netology/tree/main/tasks_terraform/03/terraform-03

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
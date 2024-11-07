# Чек-лист готовности к домашнему заданию

![Terraform Ver](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/01/task01version.jpg)
![Terraform Ver](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/01/task01version_1.jpg)

# Задача 1

<details>
  <summary>Это точно СЕКРЕТ! доступ только после уровня 009 ну или боГ, не смотри если не уверен!"</summary>
  
```
"result": "pM7RXgg3nxfQ36fN",
```

</details>

## Неправильный синтаксис.
Дано
```
resource "docker_image" {
```
## должно быть
```
resource "docker_image" "nginx" {
```

## Ошибка в написании name
Дано
```
name  = "example_${random_password.random_string_FAKE.resulT}"
```
## должно быть
```
name  = "example_${random_password.random_string.result}"
```

![validate](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/01/task01validate.jpg)

![docker](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/01/task01docker_ps.jpg)

## -auto-approve

Кратко влечет за собой необратимые изменения, если в конфиге есть ошибки они будут везде, небезопастно.

![docker](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/01/task01docker_ps_1.jpg)

<details>
  <summary>terraform.tfstate</summary>
  
```
{
  "version": 4,
  "terraform_version": "1.8.4",
  "serial": 14,
  "lineage": "e47be478-225d-93a3-73d7-9ed9c2f81af5",
  "outputs": {},
  "resources": [
    {
      "mode": "managed",
      "type": "docker_container",
      "name": "nginx",
      "provider": "provider[\"registry.terraform.io/kreuzwerker/docker\"]",
      "instances": [
        {
          "schema_version": 2,
          "attributes": {
            "attach": false,
            "bridge": "",
            "capabilities": [],
            "cgroupns_mode": null,
            "command": [
              "nginx",
              "-g",
              "daemon off;"
            ],
            "container_logs": null,
            "container_read_refresh_timeout_milliseconds": 15000,
            "cpu_set": "",
            "cpu_shares": 0,
            "destroy_grace_seconds": null,
            "devices": [],
            "dns": null,
            "dns_opts": null,
            "dns_search": null,
            "domainname": "",
            "entrypoint": [
              "/docker-entrypoint.sh"
            ],
            "env": [],
            "exit_code": null,
            "gpus": null,
            "group_add": null,
            "healthcheck": null,
            "host": [],
            "hostname": "a4af1467e69f",
            "id": "a4af1467e69f1ed4bca399d429ad98dbc7564f784b666b74fb75b039007e5eda",
            "image": "sha256:3b25b682ea82b2db3cc4fd48db818be788ee3f902ac7378090cf2624ec2442df",
            "init": false,
            "ipc_mode": "private",
            "labels": [],
            "log_driver": "json-file",
            "log_opts": null,
            "logs": false,
            "max_retry_count": 0,
            "memory": 0,
            "memory_swap": 0,
            "mounts": [],
            "must_run": true,
            "name": "hello_world",
            "network_data": [
              {
                "gateway": "172.17.0.1",
                "global_ipv6_address": "",
                "global_ipv6_prefix_length": 0,
                "ip_address": "172.17.0.2",
                "ip_prefix_length": 16,
                "ipv6_gateway": "",
                "mac_address": "02:42:ac:11:00:02",
                "network_name": "bridge"
              }
            ],
            "network_mode": "bridge",
            "networks_advanced": [],
            "pid_mode": "",
            "ports": [
              {
                "external": 9090,
                "internal": 80,
                "ip": "0.0.0.0",
                "protocol": "tcp"
              }
            ],
            "privileged": false,
            "publish_all_ports": false,
            "read_only": false,
            "remove_volumes": true,
            "restart": "no",
            "rm": false,
            "runtime": "runc",
            "security_opts": [],
            "shm_size": 64,
            "start": true,
            "stdin_open": false,
            "stop_signal": "SIGQUIT",
            "stop_timeout": 0,
            "storage_opts": null,
            "sysctls": null,
            "tmpfs": null,
            "tty": false,
            "ulimit": [],
            "upload": [],
            "user": "",
            "userns_mode": "",
            "volumes": [],
            "wait": false,
            "wait_timeout": 60,
            "working_dir": ""
          },
          "sensitive_attributes": [],
          "private": "eyJzY2hlbWFfdmVyc2lvbiI6IjIifQ==",
          "dependencies": [
            "docker_image.nginx"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "docker_image",
      "name": "nginx",
      "provider": "provider[\"registry.terraform.io/kreuzwerker/docker\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "build": [],
            "force_remove": null,
            "id": "sha256:3b25b682ea82b2db3cc4fd48db818be788ee3f902ac7378090cf2624ec2442dfnginx:latest",
            "image_id": "sha256:3b25b682ea82b2db3cc4fd48db818be788ee3f902ac7378090cf2624ec2442df",
            "keep_locally": true,
            "name": "nginx:latest",
            "platform": null,
            "pull_triggers": null,
            "repo_digest": "nginx@sha256:28402db69fec7c17e179ea87882667f1e054391138f77ffaf0c3eb388efc3ffb",
            "triggers": null
          },
          "sensitive_attributes": [],
          "private": "bnVsbA=="
        }
      ]
    },
    {
      "mode": "managed",
      "type": "random_password",
      "name": "random_string",
      "provider": "provider[\"registry.terraform.io/hashicorp/random\"]",
      "instances": [
        {
          "schema_version": 3,
          "attributes": {
            "bcrypt_hash": "$2a$10$mkwXInNt1Qe5CqWwGU5IOuvM80DnNHaWeetb379/bGk.IqvI7b/Va",
            "id": "none",
            "keepers": null,
            "length": 16,
            "lower": true,
            "min_lower": 1,
            "min_numeric": 1,
            "min_special": 0,
            "min_upper": 1,
            "number": true,
            "numeric": true,
            "override_special": null,
            "result": "pM7RXgg3nxfQ36fN",
            "special": false,
            "upper": true
          },
          "sensitive_attributes": [
            [
              {
                "type": "get_attr",
                "value": "bcrypt_hash"
              }
            ],
            [
              {
                "type": "get_attr",
                "value": "result"
              }
            ]
          ]
        }
      ]
    }
  ],
  "check_results": null
}
```

</details>

# Задача 4

![MySql query](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task4sql.jpg)

<details>
  <summary>Bash script</summary>
  
```
git clone https://github.com/GrizzlikovOleg/shvirtd-example-python/ /opt/python_app_project

cd /opt/python_app_project

sudo docker compose up -d
```

</details>

https://github.com/GrizzlikovOleg/shvirtd-example-python - FORK

# Задача 5

<details>
  <summary>Bash backup script</summary>
  
```
#!/bin/bash

BACKUP_DIR="/opt/backup"

set -a
source "$BACKUP_DIR/.env"
set +a

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DIR/$MYSQL_DATABASE-$TIMESTAMP.sql"

docker run --rm \
  --network=python_app_project_backend \
  mysql:latest \
  sh -c "exec mysqldump -hmysql_db -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE" > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "Резервное копирование успешно: $BACKUP_FILE"
else
    echo "Ошибка резервного копирования"
fi
```

</details>

![Cron](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task5cron.jpg)

![Backups](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task5backups.jpg)

# Задача 6

![Ter1](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task6ter_1.jpg)
![Ter2](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task6ter_2.jpg)
![Ter3](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task6ter_3.jpg)

#Задача 6.1

![Ter1](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task6_1ter.jpg)

#Задача 6.2

Попробовал вот такой Dockerfile не получилось, не совсем понимаю в чем дело, покопаюсь еще.
<details>
<summary>Dockerfile</summary> 
  
```
FROM hashicorp/terraform:latest

WORKDIR /app

RUN cp /bin/terraform /app/terraform

CMD ["cp", "/app/terraform", "/output/terraform"]
```

</details>

#Задача 7

*
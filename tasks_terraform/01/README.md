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

Скрин валидации после исправлений.
![validate](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_terraform/01/task01validate.jpg)

# Задача 3

![MySql query](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task3database.jpg)

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
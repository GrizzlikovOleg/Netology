


# 5
Проверка линтом
![ansible-lint](https://github.com/GrizzlikovOleg/Netology/main/tasks_ansible/ansible_02/ans_02_lint.png)
# 6
Check
![ansible_check](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_ansible/ansible_02/ans_02_check1.png)
![ansible_check](https://github.com/GrizzlikovOleg/Netology/tree/main/tasks_ansible/ansible_02/ans_02_check2.png)
# 7
--diff
![ansible_diff](https://github.com/GrizzlikovOleg/Netology/tree/main/tasks_ansible/ansible_02/ans_02_diff1.png)
![ansible_diff](https://github.com/GrizzlikovOleg/Netology/tree/main/tasks_ansible/ansible_02/ans_02_diff2.png)
# 8
Повторный запуск --diff
![ansible_diff](https://github.com/GrizzlikovOleg/Netology/tree/main/tasks_ansible/ansible_02/ans_02_diff1second.png)
![ansible_diff](https://github.com/GrizzlikovOleg/Netology/tree/main/tasks_ansible/ansible_02/ans_02_diff2second.png)




<details>
  <summary>Документация</summary>
  
```
Playbook: site.yml

Описание: Данный playbook предназначен для автоматизированного развертывания и базовой настройки серверов ClickHouse и Vector на CentOS 7. Playbook обеспечивает установку необходимых пакетов, настройку сервисов и развертывание конфигурационных файлов.

Структура playbook: Playbook состоит из трех основных секций (play):

Установка Python 3: Устанавливает Python 3 на всех хостах.
Установка ClickHouse: Устанавливает и настраивает ClickHouse на целевых серверах.
Установка и настройка Vector: Устанавливает и настраивает Vector на целевых серверах.
Хосты:

all: Применяется для установки Python 3.
clickhouse: Применяется для установки и настройки ClickHouse. Включает в себя хост clickhouse-01.
vector: Применяется для установки и настройки Vector. Включает в себя хост vector-01.
Параметры (vars):

Глобальные (не специфичные для хоста):
Нет глобальных переменных, используемых всеми секциями playbook.
clickhouse (секция vars):
clickhouse_version: "22.3.3.44": Версия ClickHouse для установки.
clickhouse_packages: ["clickhouse-client", "clickhouse-server", "clickhouse-common-static"]: Список пакетов ClickHouse для установки.
vector (секция vars):
vector_version: "0.44.0": Версия Vector для установки.
ansible_python_interpreter: Переменная задается в секции vars для групп clickhouse и vector для указания пути к Python3 /usr/bin/python3.
ansible_user, ansible_ssh_private_key_file: Переменные для авторизации по SSH, задаются для каждой группы хостов (clickhouse и vector) в файле инвентаря.
Задачи (Tasks):

Секция Установка Python 3:
Install Python 3: Использует raw модуль для установки Python3 с помощью yum.
Секция Установка ClickHouse:
Add ClickHouse repository: Добавляет официальный репозиторий ClickHouse.
Install ClickHouse packages: Устанавливает пакеты clickhouse-client, clickhouse-server, clickhouse-common-static.
Flush handlers: Выполняет все накопившиеся обработчики.
Create database logs: Создает базу данных logs в ClickHouse.
Секция Установка и настройка Vector:
Install required dependencies: Устанавливает пакет tar.
Create Vector installation directory: Создает директорию /opt/vector для установки Vector.
Download Vector: Скачивает архив с Vector с GitHub.
Extract Vector: Распаковывает архив с Vector в директорию установки.
Deploy Vector config: Развертывает конфигурационный файл vector.toml из шаблона.
Create systemd service for Vector: Создает файл сервиса vector.service для управления Vector.
Enable and start Vector service: Включает и запускает сервис Vector через systemd.
Обработчики (Handlers):

Секция Установка ClickHouse:
Start clickhouse service: Перезапускает сервис clickhouse-server после изменения конфигурации.
Секция Установка и настройка Vector:
Restart vector service: Перезапускает сервис vector после изменения конфигурации.
Теги:

Playbook не содержит явных тегов, но можно использовать имена секций (play) в качестве тегов:
install python: Для запуска только секции установки Python 3.
install clickhouse: Для запуска только секции установки ClickHouse.
install vector: Для запуска только секции установки Vector.
Файлы и шаблоны:

vector_config.j2: Шаблон конфигурационного файла Vector.
```

</details>
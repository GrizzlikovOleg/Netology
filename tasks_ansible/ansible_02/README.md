
# 5
Проверка линтом
![ansible-lint](https://github.com/GrizzlikovOleg/Netology/blob/tasks_ansible/ansible_02/ans_02_lint.png)
# 6
Check
![ansible_check](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_ansible/ansible_02/ans_02_check1.png)
![ansible_check](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_ansible/ansible_02/ans_02_check2.png)
# 7
--diff
![ansible_diff](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_ansible/ansible_02/ans_02_diff1.png)
![ansible_diff](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_ansible/ansible_02/ans_02_diff2.png)
# 8
Повторный запуск --diff
![ansible_diff](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_ansible/ansible_02/ans_02_diff1second.png)
![ansible_diff](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_ansible/ansible_02/ans_02_diff2second.png)



# Ansible Playbook: site.yml

## Описание: 
Данный playbook предназначен для автоматизированного развертывания и базовой настройки серверов и сервисов ClickHouse и Vector на ОС CentOS 7. Playbook обеспечивает установку необходимых пакетов, настройку сервисов и конфигурацию.

## Структура playbook: 
#### Playbook состоит из трех основных секций:
- Установка Python 3: Инсталляция Python 3 на всех VM.
- Установка ClickHouse: Инсталляция и конфигурация ClickHouse.
- Установка и настройка Vector: Инсталляция и конфигурация Vector.

#### Инсталляция производится на хосты (далее по тексту VM) которые описаны в файле inventory prod.yml:
- all: все существующие в inventory VM.
- clickhouse: Применяется для установки и настройки ClickHouse. Включает в себя хост clickhouse-01. Для работы требуется указать IP целевой VM. 
- vector: Применяется для установки и настройки Vector. Включает в себя хост vector-01. Для работы требуется указать IP целевой VM.

#### Используемые параметры, определены в файле настроек vars.yml:  
**Параметры определнные для конкретных VM:**  
clickhouse: название группы параметров для сервиса Clickhouse
clickhouse_version: "22.3.3.44": Версия для установки.
clickhouse_packages: ["clickhouse-client", "clickhouse-server", "clickhouse-common-static"]: Список пакетов для установки.
vector: название группы параметров для сервиса Vektor
vector_version: "0.44.0": Версия для установки.  
**Общие параметры применяются ко всем VM:**    
ansible_python_interpreter: выбор интерпритатора для работы, определен как Python3 /usr/bin/python3.
ansible_user, ansible_ssh_private_key_file: Аторизационные параметры для работы по SSH.

#### Описание задач которые производятся playbook'ом на указанных VM:
**Секция Установка Python 3:**  
Install Python 3: Производит инсталляцию Python3 на целевые VM.
**Секция Установка ClickHouse:**  
Start clickhouse service: Перезапускает сервис clickhouse-server после изменения конфигурации.
Add ClickHouse repository: Добавляет официальный репозиторий ClickHouse.
Install ClickHouse packages: Устанавливает пакеты clickhouse-client, clickhouse-server, clickhouse-common-static.
Flush handlers: Выполняет все накопившиеся обработчики.
Create database logs: Создает базу данных logs в ClickHouse.
**Секция Установка и настройка Vector:**  
Restart vector service: Перезапускает сервис vector после изменения конфигурации.
Install required dependencies: Устанавливает пакет tar.
Create Vector installation directory: Создает директорию /opt/vector для установки Vector.
Download Vector: Скачивает архив с Vector с GitHub.
Extract Vector: Распаковывает архив с Vector в директорию установки.
Deploy Vector config: Развертывает конфигурационный файл vector.toml из шаблона.
Create systemd service for Vector: Создает файл сервиса vector.service для управления Vector.
Enable and start Vector service: Включает и запускает сервис Vector через systemd.
Обработчики (Handlers):

## Теги:
Playbook не содержит явных тегов, но можно использовать имена секций в качестве тегов:
install python: Для запуска только секции установки Python 3.
install clickhouse: Для запуска только секции установки ClickHouse.
install vector: Для запуска только секции установки Vector.

## Дополнительные файлы и шаблоны:
vector_config.j2: Шаблон конфигурационного файла Vector, используется для настройки сервиса Vektor после инсталляции и запуска.

## Дополнительные комментарии:
Данный playbook протестирован на VM созданных при помощи утилиты terraform, с "чистыми" ОС, без каких либо дополнительных манипуляций. Внесение каких либо изменений на целевые VM до запуска playbook, могут привести к неработоспособности и невозможности исполнения скрипта. 
Если при попытке проверки site.yml через утилиту --check возникает ошибка отсутствия python3, требуется произвести запуск playbook для его установки на целевые VM.
Не проверяйте site.yml через lint, эта бессердечная тварь найдет ошибку даже там где ее нет. 
Будь проклят синтаксис YAML. (личное мнение автора).
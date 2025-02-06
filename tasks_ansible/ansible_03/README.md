# Ansible Playbook: site.yml



## Описание:
Данный playbook предназначен для автоматизированного развертывания и базовой настройки серверов и сервисов ClickHouse, Vector и LightHouse на ОС CentOS 7. Playbook обеспечивает установку необходимых пакетов, настройку сервисов и конфигурацию.  

## Структура Playbook:
**Playbook состоит из четырех основных секций:**
    Установка Python 3: Инсталляция Python 3 на всех VM.
    Установка и настройка ClickHouse: Инсталляция и базовая настройка ClickHouse.
    Установка и настройка Vector: Инсталляция и базовая настройка Vector.
    Установка и настройка LightHouse: Установка и настройка LightHouse с использованием Git и Nginx.

### Хосты:
Playbook применяется к различным хостам, которые описаны в файле inventory prod.yml:
    all: Все существующие в inventory VM.
    clickhouse: Для установки и настройки ClickHouse. Включает хост clickhouse-01.
    vector: Для установки и настройки Vector. Включает хост vector-01.
    lighthouse: Для установки и настройки LightHouse. Включает хост lighthouse-01.

## Используемые параметры:
**Параметры определены в файле настроек vars.yml:**
    clickhouse:
        clickhouse_version: версия для установки, например "22.3.3.44".
        clickhouse_packages: список пакетов для установки, например ["clickhouse-client", "clickhouse-server", "clickhouse-common-static"].
    vector:
        vector_version: версия для установки, например "0.44.0".
**Общие параметры:**
        ansible_python_interpreter: путь к интерпретатору Python 3, например /usr/bin/python3.
        ansible_user, ansible_ssh_private_key_file: параметры для авторизации по SSH.

## Описание задач:
**Секция Установка Python 3:**
    Install Python 3: Устанавливает Python 3 на целевые VM.

**Секция Установка и настройка ClickHouse:**
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

**Секция Установка и настройка LightHouse:**
    Install Git and Nginx: Устанавливает необходимые пакеты git и nginx.
    Clone LightHouse repository: Клонирует репозиторий LightHouse из GitHub.
    Configure Nginx for LightHouse: Конфигурирует Nginx для работы с LightHouse.
    Ensure Nginx is running: Обеспечивает запуск и автоматический старт Nginx.

**Обработчики:**
    Restart Nginx: Перезапускает Nginx после изменения конфигурации.
    Restart Vector: Перезапускает сервис Vector после изменения конфигурации.
    Start clickhouse service: Перезапускает сервис ClickHouse после установки.

## Теги:
Playbook не содержит явных тегов, но можно использовать имена секций в качестве тегов для запуска:
    install python: Для запуска только секции установки Python 3.
    install clickhouse: Для запуска только секции установки ClickHouse.
    install vector: Для запуска только секции установки Vector.
    install lighthouse: Для запуска только секции установки и настройки LightHouse.

## Дополнительные файлы и шаблоны:

    vector_config.j2: Шаблон конфигурационного файла Vector, используется для настройки сервиса Vector после инсталляции и запуска.

## Дополнительные комментарии:

Данный playbook протестирован на VM, созданных при помощи утилиты Terraform, с "чистыми" ОС, без каких-либо дополнительных манипуляций. Внесение изменений на целевые VM до запуска playbook может привести к неработоспособности и невозможности исполнения скрипта.
Если при попытке проверки site.yml через утилиту --check возникает ошибка отсутствия Python 3, требуется произвести запуск playbook для его установки на целевые VM. Либо вручную установить недостающий пакет.
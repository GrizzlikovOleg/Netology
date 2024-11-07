
# Задача 0

![Docker Ver](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task0dockerver.jpg)

# Задача 1

![YC Registry](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task1ycreg_1.jpg)
![YC Registry](https://github.com/GrizzlikovOleg/Netology/blob/main/05-virt-04-docker-in-practice/task1ycreg_2.jpg)

# Задача 2

Результаты сканирования
<details>
  <summary>Result</summary>
  
```
+----------+---------------------+--------+--------+--------------------+-----------------------+----------+-----------------------------------------------------------------+
| SEVERITY |        NAME         | ORIGIN |  TYPE  |      PACKAGE       |        VERSION        | FIXED BY |                              LINK                               |
+----------+---------------------+--------+--------+--------------------+-----------------------+----------+-----------------------------------------------------------------+
| CRITICAL | CVE-2023-45853      | os     | debian | zlib1g             | 1:1.2.13.dfsg-1       |          | https://avd.aquasec.com/nvd/cve-2023-45853                      |
| HIGH     | CVE-2024-26462      | os     | debian | libgssapi-krb5-2   | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26462                      |
| HIGH     | CVE-2024-26462      | os     | debian | libk5crypto3       | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26462                      |
| HIGH     | CVE-2024-26462      | os     | debian | libkrb5-3          | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26462                      |
| HIGH     | CVE-2024-26462      | os     | debian | libkrb5support0    | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26462                      |
| HIGH     | CVE-2023-7104       | os     | debian | libsqlite3-0       | 3.40.1-2              |          | https://avd.aquasec.com/nvd/cve-2023-7104                       |
| HIGH     | CVE-2023-31484      | os     | debian | perl-base          | 5.36.0-7+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2023-31484                      |
| MEDIUM   | CVE-2024-2236       | os     | debian | libgcrypt20        | 1.10.1-3              |          | https://avd.aquasec.com/nvd/cve-2024-2236                       |
| MEDIUM   | CVE-2023-50495      | os     | debian | libncursesw6       | 6.4-4                 |          | https://avd.aquasec.com/nvd/cve-2023-50495                      |
| MEDIUM   | CVE-2024-10041      | os     | debian | libpam-modules     | 1.5.2-6+deb12u1       |          | https://avd.aquasec.com/nvd/cve-2024-10041                      |
| MEDIUM   | CVE-2024-22365      | os     | debian | libpam-modules     | 1.5.2-6+deb12u1       |          | https://avd.aquasec.com/nvd/cve-2024-22365                      |
| MEDIUM   | CVE-2024-10041      | os     | debian | libpam-modules-bin | 1.5.2-6+deb12u1       |          | https://avd.aquasec.com/nvd/cve-2024-10041                      |
| MEDIUM   | CVE-2024-22365      | os     | debian | libpam-modules-bin | 1.5.2-6+deb12u1       |          | https://avd.aquasec.com/nvd/cve-2024-22365                      |
| MEDIUM   | CVE-2024-10041      | os     | debian | libpam-runtime     | 1.5.2-6+deb12u1       |          | https://avd.aquasec.com/nvd/cve-2024-10041                      |
| MEDIUM   | CVE-2024-22365      | os     | debian | libpam-runtime     | 1.5.2-6+deb12u1       |          | https://avd.aquasec.com/nvd/cve-2024-22365                      |
| MEDIUM   | CVE-2024-10041      | os     | debian | libpam0g           | 1.5.2-6+deb12u1       |          | https://avd.aquasec.com/nvd/cve-2024-10041                      |
| MEDIUM   | CVE-2024-22365      | os     | debian | libpam0g           | 1.5.2-6+deb12u1       |          | https://avd.aquasec.com/nvd/cve-2024-22365                      |
| MEDIUM   | CVE-2024-5535       | os     | debian | libssl3            | 3.0.14-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-5535                       |
| MEDIUM   | CVE-2023-50495      | os     | debian | libtinfo6          | 6.4-4                 |          | https://avd.aquasec.com/nvd/cve-2023-50495                      |
| MEDIUM   | CVE-2023-4641       | os     | debian | login              | 1:4.13+dfsg1-1+b1     |          | https://avd.aquasec.com/nvd/cve-2023-4641                       |
| MEDIUM   | CVE-2023-50495      | os     | debian | ncurses-base       | 6.4-4                 |          | https://avd.aquasec.com/nvd/cve-2023-50495                      |
| MEDIUM   | CVE-2023-50495      | os     | debian | ncurses-bin        | 6.4-4                 |          | https://avd.aquasec.com/nvd/cve-2023-50495                      |
| MEDIUM   | CVE-2024-5535       | os     | debian | openssl            | 3.0.14-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-5535                       |
| MEDIUM   | CVE-2023-4641       | os     | debian | passwd             | 1:4.13+dfsg1-1+b1     |          | https://avd.aquasec.com/nvd/cve-2023-4641                       |
| LOW      | CVE-2011-3374       | os     | debian | apt                | 2.6.1                 |          | https://avd.aquasec.com/nvd/cve-2011-3374                       |
| LOW      | TEMP-0841856-B18BAF | os     | debian | bash               | 5.2.15-2+b7           |          | https://security-tracker.debian.org/tracker/TEMP-0841856-B18BAF |
| LOW      | CVE-2022-0563       | os     | debian | bsdutils           | 1:2.38.1-5+deb12u1    |          | https://avd.aquasec.com/nvd/cve-2022-0563                       |
| LOW      | CVE-2016-2781       | os     | debian | coreutils          | 9.1-1                 |          | https://avd.aquasec.com/nvd/cve-2016-2781                       |
| LOW      | CVE-2017-18018      | os     | debian | coreutils          | 9.1-1                 |          | https://avd.aquasec.com/nvd/cve-2017-18018                      |
| LOW      | CVE-2022-27943      | os     | debian | gcc-12-base        | 12.2.0-14             |          | https://avd.aquasec.com/nvd/cve-2022-27943                      |
| LOW      | CVE-2023-4039       | os     | debian | gcc-12-base        | 12.2.0-14             |          | https://avd.aquasec.com/nvd/cve-2023-4039                       |
| LOW      | CVE-2022-3219       | os     | debian | gpgv               | 2.2.40-1.1            |          | https://avd.aquasec.com/nvd/cve-2022-3219                       |
| LOW      | CVE-2011-3374       | os     | debian | libapt-pkg6.0      | 2.6.1                 |          | https://avd.aquasec.com/nvd/cve-2011-3374                       |
| LOW      | CVE-2022-0563       | os     | debian | libblkid1          | 2.38.1-5+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2022-0563                       |
| LOW      | CVE-2010-4756       | os     | debian | libc-bin           | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2010-4756                       |
| LOW      | CVE-2018-20796      | os     | debian | libc-bin           | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2018-20796                      |
| LOW      | CVE-2019-1010022    | os     | debian | libc-bin           | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-1010022                    |
| LOW      | CVE-2019-1010023    | os     | debian | libc-bin           | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-1010023                    |
| LOW      | CVE-2019-1010024    | os     | debian | libc-bin           | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-1010024                    |
| LOW      | CVE-2019-1010025    | os     | debian | libc-bin           | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-1010025                    |
| LOW      | CVE-2019-9192       | os     | debian | libc-bin           | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-9192                       |
| LOW      | CVE-2010-4756       | os     | debian | libc6              | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2010-4756                       |
| LOW      | CVE-2018-20796      | os     | debian | libc6              | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2018-20796                      |
| LOW      | CVE-2019-1010022    | os     | debian | libc6              | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-1010022                    |
| LOW      | CVE-2019-1010023    | os     | debian | libc6              | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-1010023                    |
| LOW      | CVE-2019-1010024    | os     | debian | libc6              | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-1010024                    |
| LOW      | CVE-2019-1010025    | os     | debian | libc6              | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-1010025                    |
| LOW      | CVE-2019-9192       | os     | debian | libc6              | 2.36-9+deb12u8        |          | https://avd.aquasec.com/nvd/cve-2019-9192                       |
| LOW      | CVE-2022-27943      | os     | debian | libgcc-s1          | 12.2.0-14             |          | https://avd.aquasec.com/nvd/cve-2022-27943                      |
| LOW      | CVE-2023-4039       | os     | debian | libgcc-s1          | 12.2.0-14             |          | https://avd.aquasec.com/nvd/cve-2023-4039                       |
| LOW      | CVE-2018-6829       | os     | debian | libgcrypt20        | 1.10.1-3              |          | https://avd.aquasec.com/nvd/cve-2018-6829                       |
| LOW      | CVE-2011-3389       | os     | debian | libgnutls30        | 3.7.9-2+deb12u3       |          | https://avd.aquasec.com/nvd/cve-2011-3389                       |
| LOW      | CVE-2018-5709       | os     | debian | libgssapi-krb5-2   | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2018-5709                       |
| LOW      | CVE-2024-26458      | os     | debian | libgssapi-krb5-2   | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26458                      |
| LOW      | CVE-2024-26461      | os     | debian | libgssapi-krb5-2   | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26461                      |
| LOW      | CVE-2018-5709       | os     | debian | libk5crypto3       | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2018-5709                       |
| LOW      | CVE-2024-26458      | os     | debian | libk5crypto3       | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26458                      |
| LOW      | CVE-2024-26461      | os     | debian | libk5crypto3       | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26461                      |
| LOW      | CVE-2018-5709       | os     | debian | libkrb5-3          | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2018-5709                       |
| LOW      | CVE-2024-26458      | os     | debian | libkrb5-3          | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26458                      |
| LOW      | CVE-2024-26461      | os     | debian | libkrb5-3          | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26461                      |
| LOW      | CVE-2018-5709       | os     | debian | libkrb5support0    | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2018-5709                       |
| LOW      | CVE-2024-26458      | os     | debian | libkrb5support0    | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26458                      |
| LOW      | CVE-2024-26461      | os     | debian | libkrb5support0    | 1.20.1-2+deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-26461                      |
| LOW      | CVE-2022-0563       | os     | debian | libmount1          | 2.38.1-5+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2022-0563                       |
| LOW      | CVE-2023-45918      | os     | debian | libncursesw6       | 6.4-4                 |          | https://avd.aquasec.com/nvd/cve-2023-45918                      |
| LOW      | CVE-2022-0563       | os     | debian | libsmartcols1      | 2.38.1-5+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2022-0563                       |
| LOW      | CVE-2021-45346      | os     | debian | libsqlite3-0       | 3.40.1-2              |          | https://avd.aquasec.com/nvd/cve-2021-45346                      |
| LOW      | CVE-2024-9143       | os     | debian | libssl3            | 3.0.14-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-9143                       |
| LOW      | CVE-2022-27943      | os     | debian | libstdc++6         | 12.2.0-14             |          | https://avd.aquasec.com/nvd/cve-2022-27943                      |
| LOW      | CVE-2023-4039       | os     | debian | libstdc++6         | 12.2.0-14             |          | https://avd.aquasec.com/nvd/cve-2023-4039                       |
| LOW      | CVE-2013-4392       | os     | debian | libsystemd0        | 252.30-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2013-4392                       |
| LOW      | CVE-2023-31437      | os     | debian | libsystemd0        | 252.30-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2023-31437                      |
| LOW      | CVE-2023-31438      | os     | debian | libsystemd0        | 252.30-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2023-31438                      |
| LOW      | CVE-2023-31439      | os     | debian | libsystemd0        | 252.30-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2023-31439                      |
| LOW      | CVE-2023-45918      | os     | debian | libtinfo6          | 6.4-4                 |          | https://avd.aquasec.com/nvd/cve-2023-45918                      |
| LOW      | CVE-2013-4392       | os     | debian | libudev1           | 252.30-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2013-4392                       |
| LOW      | CVE-2023-31437      | os     | debian | libudev1           | 252.30-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2023-31437                      |
| LOW      | CVE-2023-31438      | os     | debian | libudev1           | 252.30-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2023-31438                      |
| LOW      | CVE-2023-31439      | os     | debian | libudev1           | 252.30-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2023-31439                      |
| LOW      | CVE-2022-0563       | os     | debian | libuuid1           | 2.38.1-5+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2022-0563                       |
| LOW      | CVE-2007-5686       | os     | debian | login              | 1:4.13+dfsg1-1+b1     |          | https://avd.aquasec.com/nvd/cve-2007-5686                       |
| LOW      | CVE-2023-29383      | os     | debian | login              | 1:4.13+dfsg1-1+b1     |          | https://avd.aquasec.com/nvd/cve-2023-29383                      |
| LOW      | TEMP-0628843-DBAD28 | os     | debian | login              | 1:4.13+dfsg1-1+b1     |          | https://security-tracker.debian.org/tracker/TEMP-0628843-DBAD28 |
| LOW      | CVE-2022-0563       | os     | debian | mount              | 2.38.1-5+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2022-0563                       |
| LOW      | CVE-2023-45918      | os     | debian | ncurses-base       | 6.4-4                 |          | https://avd.aquasec.com/nvd/cve-2023-45918                      |
| LOW      | CVE-2023-45918      | os     | debian | ncurses-bin        | 6.4-4                 |          | https://avd.aquasec.com/nvd/cve-2023-45918                      |
| LOW      | CVE-2024-9143       | os     | debian | openssl            | 3.0.14-1~deb12u2      |          | https://avd.aquasec.com/nvd/cve-2024-9143                       |
| LOW      | CVE-2007-5686       | os     | debian | passwd             | 1:4.13+dfsg1-1+b1     |          | https://avd.aquasec.com/nvd/cve-2007-5686                       |
| LOW      | CVE-2023-29383      | os     | debian | passwd             | 1:4.13+dfsg1-1+b1     |          | https://avd.aquasec.com/nvd/cve-2023-29383                      |
| LOW      | TEMP-0628843-DBAD28 | os     | debian | passwd             | 1:4.13+dfsg1-1+b1     |          | https://security-tracker.debian.org/tracker/TEMP-0628843-DBAD28 |
| LOW      | CVE-2011-4116       | os     | debian | perl-base          | 5.36.0-7+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2011-4116                       |
| LOW      | CVE-2023-31486      | os     | debian | perl-base          | 5.36.0-7+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2023-31486                      |
| LOW      | TEMP-0517018-A83CE6 | os     | debian | sysvinit-utils     | 3.06-4                |          | https://security-tracker.debian.org/tracker/TEMP-0517018-A83CE6 |
| LOW      | CVE-2005-2541       | os     | debian | tar                | 1.34+dfsg-1.2+deb12u1 |          | https://avd.aquasec.com/nvd/cve-2005-2541                       |
| LOW      | TEMP-0290435-0B57B5 | os     | debian | tar                | 1.34+dfsg-1.2+deb12u1 |          | https://security-tracker.debian.org/tracker/TEMP-0290435-0B57B5 |
| LOW      | CVE-2022-0563       | os     | debian | util-linux         | 2.38.1-5+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2022-0563                       |
| LOW      | CVE-2022-0563       | os     | debian | util-linux-extra   | 2.38.1-5+deb12u1      |          | https://avd.aquasec.com/nvd/cve-2022-0563                       |
+----------+---------------------+--------+--------+--------------------+-----------------------+----------+-----------------------------------------------------------------+
```

</details>

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

![Cron](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_virtual-docker/05-virt-04-docker-in-practice/task5cron.jpg)

![Backups](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_virtual-docker/05-virt-04-docker-in-practice/task5backups.jpg)

# Задача 6

![Ter1](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_virtual-docker/05-virt-04-docker-in-practice/task6ter_1.jpg)
![Ter2](https://github.com/GrizzlikovOleg/Netology/blob/main/tasks_virtual-docker/05-virt-04-docker-in-practice/task6ter_2.jpg)
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
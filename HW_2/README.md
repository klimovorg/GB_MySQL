# Урок 2. Видеоурок. Управление БД. Язык запросов SQL

## Практическое задание по теме “Управление БД”
1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
1. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
1. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
1. (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.

## Решение

1. БД установил. Результат в [ДЗ 1.](https://github.com/klimovorg/GB_MySQL/tree/main/HW_1)  
    Подключился с помощью команды
    ```c
    mysql -h 127.0.0.1 -P 15123 -u root -p rup
    ```
    ![1](1.png)

    Создал конфигурационный файл .my.cnf

    ```c
    [mysql]
    user=root
    password=it_is_the_secret
    host=127.0.0.1
    port=15123
    ```

    Прописал права: 
    ```bash
    chmod 0644 .my.cnf
    ```

    ![1](2.png)
    ![1](3.png)  
1. 
    Создаем базу данных example
    ```sql
    CREATE DATABASE IF NOT EXISTS example
    CHARACTER SET utf8
    COLLATE utf8_general_ci;
    ```  
    Создаем таблицу users, состоящую из двух столбцов, числового id и строкового name.
    ```sql
    USE example;
    CREATE TABLE users (
	    users_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	    users_name VARCHAR(30));
    ```
    Добавим пару строк
    ```sql
    insert into users(users_name)
    values ('Вася'),('Петя'),('Юра'),('Маша');
    ```
)
1.  
1.  




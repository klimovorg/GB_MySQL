#!/bin/bash

# Настройки
DB_BACKUP_PATH=${HOME}"/Desktop"
MYSQL_HOST='127.0.0.1'
MYSQL_PORT='15123'
MYSQL_USER='root'
MYSQL_PASSWORD='34543543553'
DATABASE_NAME='example'

# Дамп (конечно же, чтобы он не ел много места, архивируем его)
mysqldump --host=${MYSQL_HOST} \
    --port=${MYSQL_PORT} \
    --user=${MYSQL_USER} \
    --password=${MYSQL_PASSWORD} \
    ${DATABASE_NAME} | gzip > ${DB_BACKUP_PATH}/${MYSQL_HOST}-${DATABASE_NAME}-${TODAY}.sql.gz
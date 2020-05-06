#!/bin/bash

docker-compose -p server_0 up -d

MSG_SERVERS_COUNT=2
server_number=1

while [ $server_number -lt $MSG_SERVERS_COUNT ]
do

export APP_PORT=808$server_number
export ADMINER_PORT=608$server_number
export DB_PATH_HOST=./databases_$server_number

docker-compose -p server_$server_number up -d

server_number=$[ $server_number + 1 ]

done

unset  APP_PORT
unset  ADMINER_PORT
unset  DB_PATH_HOST


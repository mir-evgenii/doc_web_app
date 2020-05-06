#!/bin/bash

docker-compose -p server_0 down

MSG_SERVERS_COUNT=2
server_number=1

while [ $server_number -lt $MSG_SERVERS_COUNT ]
do

docker-compose -p server_$server_number down

server_number=$[ $server_number + 1 ]

done


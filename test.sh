#!/bin/bash

IMAGE=demoapp
PORT=8080

ID=`docker ps -af "ancestor=$IMAGE" -f "status=running" --format "{{.ID}}"`
IP_ADDRESS=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' $ID`
curl -vvv http://$IP_ADDRESS:$PORT/DemoProject/Hello

#!/bin/sh


pkill -fl java "-jar * api/services*"

docker-compose down

docker-compose ps

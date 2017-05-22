#!/bin/sh

echo "Checking Java Services..."
pgrep -fl java "-jar * api/services*"
count=$(pgrep -fl java '-jar * api/services*' | wc -l)
echo "$count services running" | xargs
sleep 3
echo "Checking Docker Container..."
docker-compose ps


#!/bin/sh

export PATH=/opt/mongodb/bin:$PATH

mongod >mongo.out 2>&1 &

sleep 3
mongorestore dump/
tail -f mongo.out
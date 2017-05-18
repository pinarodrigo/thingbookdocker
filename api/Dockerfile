FROM java:8

WORKDIR /opt/thingbook
RUN mkdir /opt/thingbook/dump

ADD mongo* /opt/
ADD dump/ /opt/thingbook/dump/
ADD services $WORKDIR
ADD startup-docker.sh $WORKDIR

RUN mv /opt/mongo* /opt/mongodb
RUN mkdir -p /data/db

ENTRYPOINT ./startup-docker.sh
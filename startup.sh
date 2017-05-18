#!/bin/sh

docker-compose up -d >logs/docker.out 2>&1 &

export THINGBOOK_PARAMS='-Dspring.profiles.active=local -Dhttps.proxyHost=localhost -Dhttps.proxyPort=8585 -Dhttp.proxyHost=localhost -Dhttp.proxyPort=8585 -Xmx512m'

java -jar $THINGBOOK_PARAMS api/services/eureka-*.jar >logs/eureka.out 2>&1 &
java -jar $THINGBOOK_PARAMS api/services/product-*.jar >logs/product.out 2>&1 &
java -jar $THINGBOOK_PARAMS api/services/product-taxonomy-*.jar >logs/product-taxonomy.out 2>&1 &
java -jar $THINGBOOK_PARAMS api/services/rating-*.jar >logs/rating.out 2>&1 &
java -jar $THINGBOOK_PARAMS api/services/prima-*.jar >logs/prima.out 2>&1 &
java -jar $THINGBOOK_PARAMS api/services/authentication-*.jar >logs/authentication.out 2>&1 &
java -jar $THINGBOOK_PARAMS api/services/inventory-*.jar >logs/inventory.out 2>&1 &
java -jar $THINGBOOK_PARAMS api/services/user-*.jar >logs/user.out 2>&1 &
#----
java -jar $THINGBOOK_PARAMS api/services/manufacturer-*.jar >logs/manufacturer.out 2>&1 &
java -jar $THINGBOOK_PARAMS api/services/service-company-*.jar >logs/service-company.out 2>&1 &

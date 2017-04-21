#!/bin/sh

export PATH=/opt/mongodb/bin:$PATH
export THINGBOOK_PARAMS='-Dspring.profiles.active=local -Dhttps.proxyHost=rb-proxy-de.bosch.com -Dhttps.proxyPort=8080 -Dhttp.proxyHost=rb-proxy-de.bosch.com -Dhttp.proxyPort=8080 -Xmx1024m'

mongod >mongo.out 2>&1 &

java -jar $THINGBOOK_PARAMS eureka-*.jar >eureka.out 2>&1 &
java -jar $THINGBOOK_PARAMS product-*.jar >product.out 2>&1 &
java -jar $THINGBOOK_PARAMS product-taxonomy-*.jar >product-taxonomy.out 2>&1 &
java -jar $THINGBOOK_PARAMS rating-*.jar >rating.out 2>&1 &
java -jar $THINGBOOK_PARAMS prima-*.jar >prima.out 2>&1 &
#java -jar $THINGBOOK_PARAMS authentication-*.jar >authentication.out 2>&1 &
#java -jar $THINGBOOK_PARAMS inventory-*.jar >inventory.out 2>&1 &
#java -jar $THINGBOOK_PARAMS manufacturer-*.jar >manufacturer.out 2>&1 &
#java -jar $THINGBOOK_PARAMS manufacturer-web-*.jar >manufacturer-web.out 2>&1 &
#java -jar $THINGBOOK_PARAMS service-company-*.jar >service-company.out 2>&1 &
#java -jar $THINGBOOK_PARAMS servicecompany-web-*.jar >servicecompany-web.out 2>&1 &
#java -jar $THINGBOOK_PARAMS user-*.jar >user.out 2>&1 &
#java -jar $THINGBOOK_PARAMS tb-common-*.jar >tb-common.out 2>&1 &
#java -jar $THINGBOOK_PARAMS common-web-*.jar >common-web.out 2>&1 &
#java -jar $THINGBOOK_PARAMS mobile-gateway-*.jar >mobile-gateway.out 2>&1 &

sleep 3
mongorestore dump/
tail -f eureka.out -f prima.out
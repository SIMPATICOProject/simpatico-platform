#!/bin/bash


apk add --no-cache  --repository http://dl-cdn.alpinelinux.org/alpine/edge/main --repository  http://dl-cdn.alpinelinux.org/alpine/edge/community  mongodb-tools

source  /app-run/create_game.sh;

cd /app/game-engine.core; 
mvn -Dmaven.test.skip=true install; 

cd ../game-engine.web; 

if [ ! -d "logs" ]; then 
  mkdir logs; 
fi; 

if [ -e "/app/run-configs/users.yml" ]; then 
  cp /app/run-configs/users.yml /app/gamification-engine/game-engine.web/src/main/resources/users.yml; 
fi;

cd src/main/resources/consoleweb-assets;
bower --allow-root install

cd /app/gamification-engine/game-engine.web; 

mvn -Dmaven.test.skip=true package; 

java -Xms512m -Xmx1024m -XX:MaxMetaspaceSize=1024m -DlogFolder=/app/game-engine.web/logs -Djava.rmi.server.hostname=localhost -Dcom.sun.management.jmxremote.port=7777 -Dcom.sun.management.jmxremote.rmi.port=7777 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.local.only=false -jar target/game-engine.web.jar --spring.profiles.active=sec --server.contextPath=/gamification --task.persistence.activate=false --mongo.host=mongodb --mongo.dbname=gamification --server.port=8010

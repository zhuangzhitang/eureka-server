#!/bin/sh
if(["$JAVA_HOME" = ""]);then
    echo "Error: JAVA_HOME is not set."
    exit 1
fi

JAVA=${JAVA_HOME}/bin/java
HEAP_OPTS="-Xmx1g"

nohup "$JAVA" -Djava.awt.headless=true ${HEAP_OPTS} -jar ./eureka-server.jar > /dev/null 2>&1 &
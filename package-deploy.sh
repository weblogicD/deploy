#!/bin/bash
echo "downloading war file"

wget --user=ram --password=$1 http://3.84.44.206:8081/nexus/service/local/repositories/maven/content/java/sparkjava-hello-world/$version/sparkjava-hello-world-$version.war

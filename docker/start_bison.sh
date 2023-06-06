#/bin/bash
#
# 
#
#-dit 是问了不重启
#

workspace=$(cd $(dirname $0)/.. && pwd)
echo $workspace
docker stop bison_docker;
docker rm bison_docker;
docker run -dit --name bison_docker -v ${workspace}:/workspace  hejingzhilian/bison_practise:v2 /bin/bash

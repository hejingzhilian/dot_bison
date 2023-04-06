#/bin/bash
#
# 
#
#-dit 是问了不重启
#

workspace=$(cd $(dirname $0)/.. && pwd)
echo $workspace
docker run -dit --name bison_docker -v ${workspace}:/workspace  hejingzhilian/bison_practise /bin/bash

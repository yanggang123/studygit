export JAVA_HOME=/usr/local/java
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib.dt.jar:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/sapjco3.jar
export JRE_HOME=$JAVA_HOME/jre
export LD_LIBRARY_PATH=dir:$LD_LIBRARY_PATH:$JAVA_HOME/jre/lib/amd64/server

JAVA_OPTS='-server -Xms8g -Xmx8g -Xmn2g -XX:PermSize=500m -XX:MaxPermSize=1g -XX:+DisableExplicitGC -XX:MaxTenuringThreshold=16 -XX:NewRatio=2 -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSParallelRemarkEnabled -XX:+UseCMSCompactAtFullCollection -XX:LargePageSizeInBytes=128m -XX:+UseCMSInitiatingOccupancyOnly'

#CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9004 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Djava.rmi.server.hostname=10.59.2.16"

#export CATALINA_HOME=/geelyapp/tomcat-mes
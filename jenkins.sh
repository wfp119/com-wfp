#!/usr/bin/env bash
echo "Stopping SpringBoot Application"
#
filename="com-wfp-0.0.2-SNAPSHOT"
file="/usr/local/myweb/run/$filename.jar"
pid=`ps -ef | grep $filename | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
   kill -9 $pid
fi

if [ -f "$file" ]
then
   mv /usr/local/myweb/run/${filename}.jar /usr/local/myweb/backup/${filename}.jar&date +%Y%m%d
fi
mv /usr/local/myweb/${filename}.jar /usr/local/myweb/run/${filename}.jar

echo "chmod"
chmod 777 /usr/local/myweb/run/${filename}.jar
echo "nohup"
java -jar /usr/local/myweb/run/${filename}.jar &

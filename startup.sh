# startup.sh 启动项目
#!/bin/sh
echo "chmod"
chmod 777 /usr/local/myweb/run/com-wfp-0.0.1-SNAPSHOT.jar
echo "nohup"
java -jar /usr/local/myweb/run/com-wfp-0.0.1-SNAPSHOT.jar &

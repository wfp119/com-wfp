#replace.sh 用于将上次构建的结果备份，然后将新的构建结果移动到合适的位置
#!/bin/bash
# 先判断文件是否存在，如果存在，则备份
file="/usr/local/myweb/run/com-wfp-0.0.1-SNAPSHOT.jar"
if [ -f "$file" ]
then
   mv /usr/local/myweb/run/com-wfp-0.0.1-SNAPSHOT.jar /usr/local/myweb/backup/com-wfp-0.0.1-SNAPSHOT.jar.`date +%Y%m%d%H%M%S`
fi
mv /usr/local/myweb/com-wfp-0.0.1-SNAPSHOT.jar /usr/local/myweb/run/com-wfp-0.0.1-SNAPSHOT.jar

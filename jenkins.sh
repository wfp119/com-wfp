echo "Stopping SpringBoot Application"
#
filename="com-wfp-0.0.1-SNAPSHOT"
file="/usr/local/myweb/run/$filename.jar"
pid=`ps -ef | grep $filename | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
   kill -9 $pid
fi

if [ -f "$file" ]
then
   mv /usr/local/myweb/run/${filename} /usr/local/myweb/backup/${filename}&date +%Y%m%d
fi
mv /usr/local/myweb/${filename} /usr/local/myweb/run/${filename}

echo "chmod"
chmod 777 /usr/local/myweb/run/${filename}
echo "nohup"
java -jar /usr/local/myweb/run/${filename} &

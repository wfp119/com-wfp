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
   mv /usr/local/myweb/run/$file /usr/local/myweb/backup/$file&$(date +%Y%m%d)
fi
mv /usr/local/myweb/$file /usr/local/myweb/run/$file

echo "chmod"
chmod 777 /usr/local/myweb/run/$file
echo "nohup"
java -jar /usr/local/myweb/run/$file &

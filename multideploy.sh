!/bin/bash

if [ $ENVIRONMENT = "QA" ]; then
 for i in 'cat IPs.txt'
 do
         echo "Deploying war file into $i QA server"
         sleep 3
sshpass -p "naresh" scp target/mavenwar.war naresh@172.17.0.2:/home/softcopies/apache-tomcat-8.5.32/webapps
         echo "Starting tomcat server in $i QA server"
         sleep 3
sshpass -p "naresh" ssh naresh@172.17.0.2 "JAVA_HOME=/home/softcopies/jdk1.8.0_181"/home/softcopies/apache-tomcat-8.5.32/bin/startup.sh
   done
   echo "Deployment is successful"
   fi

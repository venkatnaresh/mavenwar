if [ $ENVIRONMENT = "QA" ];then
        sshpass -p "naresh" scp target/mavenwar.war naresh@172.17.0.2:/home/softcopies/apache-tomcat-8.5.32/webapps
        sshpass -p "naresh" ssh naresh@172.17.0.2 "JAVA_HOME=/home/softcopies/jdk1.8.0_181/home/softcopies/apache-tomcat-8.5.32/bin/startup.sh"

elif [ $ENVIRONMENT = "SIT" ];then
        sshpass -p "naresh" scp target/mavenwar.war naresh@172.17.0.3:/home/softcopies/apache-tomcat-8.5.32/webapps
        sshpass -p "naresh" ssh naresh@172.17.0.3 "JAVA_HOME=/home/softcopies/jdk1.8.0_181/home/softcopies/apache-tomcat-8.5.32/bin/startup.sh"
fi

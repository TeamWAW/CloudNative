FROM tomcat:9.0
COPY tomcat-users.xml $CATALINA_HOME/conf
COPY context.xml $CATALINA_HOME/webapps/manager/META-INF
ADD target/samplerest-0.0.1-SNAPSHOT.war $CATALINA_HOME/webapps
CMD ["catalina.sh", "run"]
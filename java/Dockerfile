FROM tomcat:8-jre11
LABEL less vulnerable java img
MAINTAINER aps
EXPOSE 8080
RUN rm -rf /usr/local/tomcat/webapps/*
COPY vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
RUN adduser --system --group aps
RUN chown -R aps:aps /usr/local/tomcat/webapps/
RUN chown -R aps:aps /usr/local/tomcat/work/
RUN chown -R aps:aps /usr/local/tomcat/temp/
RUN chown -R aps:aps /usr/local/tomcat/logs/
USER aps
CMD ["catalina.sh", "run"]


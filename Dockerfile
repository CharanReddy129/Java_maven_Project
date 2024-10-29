FROM tomcat:latest

WORKDIR /usr/local/tomcat

COPY target/*.war webapps/
RUN rm -rf webapps/ROOT && mv webapps/*.war ROOT.war
EXPOSE 8080

ENTRYPOINT ["catalina.sh", "run"]

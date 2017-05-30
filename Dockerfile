FROM tomcat:8.5.15-alpine

COPY DemoProject.war /usr/local/tomcat/webapps

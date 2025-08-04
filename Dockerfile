# FROM tomcat:latest
# RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
# COPY ./*.war /usr/local/tomcat/webapps
FROM openjdk:17-jdk-slim
COPY target/hello-world-*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]



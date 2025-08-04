# FROM tomcat:latest
# RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
# COPY ./*.war /usr/local/tomcat/webapps
FROM openjdk:17-alpine
COPY ./src /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Main.java
CMD ["java", "Main"]




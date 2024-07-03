FROM alpine:latest
RUN apk update
RUN apk add openjdk11 wget
WORKDIR /opt/tomcat
RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.44/bin/apache-tomcat-9.0.44.tar.gz
RUN tar xvzf apache-tomcat-9.0.44.tar.gz --strip-components 1 --directory /opt/tomcat 
EXPOSE 8080
ENTRYPOINT ["/opt/tomcat/bin/catalina.sh"]
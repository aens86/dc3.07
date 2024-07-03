FROM  ubuntu:18.04
RUN apt update
RUN apt install default-jdk maven wget git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 

WORKDIR /home/user/boxfuse-sample-java-war-hello
RUN mvn package 
RUN cp /home/user/boxfuse-sample-java-war-hello/target/hello-1.0.war /opt/tomcat/webapps/
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
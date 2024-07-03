FROM  ubuntu:18.04
RUN apt update
RUN apt install default-jdk maven wget git -y
WORKDIR /home/user
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git 

WORKDIR /home/user/boxfuse-sample-java-war-hello
RUN mvn package 

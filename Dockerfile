FROM tomcat

MAINTAINER sbychkov@aport.ru

RUN apt-get update && apt-get install -y git maven default-jdk
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello/ && mvn package && cp target/hello-1.0.war /usr/local//tomcat/webapps/
#CMD systemctl start tomcat8

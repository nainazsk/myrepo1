FROM redhat/ubi9:latest
MAINTAINER "Nainu"
RUN touch /opt/file1
RUN mkdir /opt/dir1
RUN yum install git -y
WORKDIR /opt
RUN git clone https://github.com/nainazsk/myrepo1.git
RUN yum install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.43/bin/apache-tomcat-10.1.43.tar.gz
RUN tar -xvf apache-tomcat-10.1.43.tar.gz
COPY tomcat-users.xml apache-tomcat-10.1.42/conf/
EXPOSE 8090
#ENV export JAVA_HOME=/path
#ENV M2_HOME=/path
#CMD git --version
ENTRYPOINT git --version

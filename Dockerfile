FROM ubuntu:16.04
MAINTAINER Jonatas Baldin jonatas.baldin@gmail.com

RUN apt-get update && \
    apt-get install wget default-jdk-headless -y

RUN wget http://apache.uniminuto.edu/hbase/1.2.6/hbase-1.2.6-bin.tar.gz && \
    tar xfz hbase-1.2.6-bin.tar.gz && \
    rm -rf hbase-1.2.6-bin.tar.gz && \
    mv hbase-1.2.6 /opt/hbase

ADD hbase-site.xml /opt/hbase/conf/hbase-site.xml
ADD run-hbase.sh /
RUN chmod +x /run-hbase.sh

ENV JAVA_HOME /usr
RUN mkdir /hbase

# Rest Interface
EXPOSE 8080
EXPOSE 8085

# Thrift Server
EXPOSE 9090

# HBASE Ports
EXPOSE 16010
EXPOSE 16020
EXPOSE 16030

CMD ["/run-hbase.sh"]

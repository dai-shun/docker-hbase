FROM daishun/jdk8

MAINTAINER daishun <daishun9@gmail.com>

RUN echo "127.0.0.1 localhost" >>/etc/hosts

COPY hbase-1.1.1-bin.tar.gz /home/hbase-1.1.1-bin.tar.gz

RUN cd home && tar -zxvf /home/hbase-1.1.1-bin.tar.gz && rm -f /home/hbase-1.1.1-bin.tar.gz && mkdir data

COPY hbase-site.xml /home/hbase-1.1.1/conf/hbase-site.xml

# 管理界面端口
EXPOSE 16010
#zookeeper
EXPOSE 2181
EXPOSE 16020
EXPOSE 16030
# tail -f 保持容器运行
CMD /home/hbase-1.1.1/bin/start-hbase.sh && tail -f /home/hbase-1.1.1/logs/hbase--master-${HOSTNAME}.out


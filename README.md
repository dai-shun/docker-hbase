docker build -t daishun/hbase .

docker run -d daishun/habse


docker cp hbase-1.1.1-bin.tar.gz  e23be760998117342fbead49a00c7065abc72c4ba9fb8e59d4aecb1e37a5d522:/home/hbase-1.1.1-bin.tar.gz

docker run -it  daishun/habse /bin/bash


docker cp   b0d159098653502abf16d1dde73a304b8a5a789917623376e214a07da32bd722:/home/hbase-1.1.1/conf/log4j.properties   log4j.properties

docker cp   b0d159098653502abf16d1dde73a304b8a5a789917623376e214a07da32bd722:/home/hbase-1.1.1/conf/hbase-site.xml   hbase-site.xml

docker run --name hbase -p 2181:2181 -d daishun/hbase
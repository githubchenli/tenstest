#基于的基础镜像
FROM 192.168.1.221/system_containers/java:8
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN mkdir -p /tenstest
WORKDIR /tenstest
EXPOSE 9001
ADD ./shared/tenstest/tenstest-1.0-SNAPSHOT.jar ./
RUN chmod 777 ./tenstest-1.0-SNAPSHOT.jar
CMD java -jar tenstest-1.0-SNAPSHOT.jar

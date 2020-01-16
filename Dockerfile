#基于的基础镜像
FROM java:8

RUN mkdir -p /tenstest
WORKDIR /tenstest
EXPOSE 9001
ADD /shared/tenstest/tenstest-1.0-SNAPSHOT.jar ./
CMD java -jar tenstest-1.0-SNAPSHOT.jar

#基于的基础镜像
FROM java:8

WORKDIR /app

ADD tenstest-1.0-SNAPSHOT.jar /app


EXPOSE 9001

CMD java -jar tenstest-1.0-SNAPSHOT.jar
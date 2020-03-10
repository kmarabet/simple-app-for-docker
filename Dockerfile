FROM ubuntu:latest

MAINTAINER Kamil Marabet "kamilmarabet@gmail.com"

RUN apt-get update && apt-get install -y openjdk-11-jdk

WORKDIR /usr/local/bin

ADD out/simple-service.jar .

ENTRYPOINT ["java", "-jar", "simple-service.jar"]

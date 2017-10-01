FROM maven:3.3-jdk-8

RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY pom.xml /usr/src/pom.xml

RUN mvn -s /usr/share/maven/ref/settings-docker.xml clean test package install --fail-never

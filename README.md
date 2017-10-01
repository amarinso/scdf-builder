This image is used as builder for Spring Cloud Data Flow applications

It is based on maven official images so in order to keep dependencies we have to select the correct settings-docker.xml (if not, it uses a volume and all will be discarded after container completion)

It contains basic maven dependencies in order to accelerate compilation time


You will be using it as follows

```
FROM anmaso/scdf-builder-1.2.0

RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY . /usr/src/

RUN mvn -s /usr/share/maven/ref/settings-docker.xml install
```

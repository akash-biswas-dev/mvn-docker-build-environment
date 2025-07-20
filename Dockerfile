FROM alpine:3.20

RUN apk update && apk add --no-cache \
    git \
    curl \
    bash \
    openjdk21 \
    maven

WORKDIR /tmp

RUN ["git", "clone", "https://github.com/akash-biswas-dev/jwt-service.git", "."]

RUN mvn clean install





FROM openjdk:8-jdk-alpine

WORKDIR /app
COPY . /app/

RUN apk add maven --no-cache
RUN mvn package

EXPOSE 8080

ENTRYPOINT ["mvn","spring-boot:run"]
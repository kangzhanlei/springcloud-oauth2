FROM openjdk:8-jdk-alpine
COPY ./auth-server/target/auth-server-1.0.jar /auth-server.jar
WORKDIR /
ENTRYPOINT java ${JVM_OPTS} -jar /auth-server.jar
EXPOSE 8001
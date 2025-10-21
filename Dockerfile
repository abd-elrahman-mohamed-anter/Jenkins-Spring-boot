FROM openjdk:25-jdk-slim
WORKDIR /app

ARG JAR_FILE=target/spring-petclinic-*.jar
ENV APP_JAR=spring-petclinic.jar


COPY ${JAR_FILE} ${APP_JAR}



ENTRYPOINT ["java", "-jar", "spring-petclinic.jar"]


FROM gradle:jdk17-jammy

WORKDIR /app
COPY . .

RUN gradle build --no-daemon

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/build/libs/spring-swagger-0.0.1-SNAPSHOT.jar"]

FROM eclipse-temurin:17-jre-jammy
ARG JAR_FILE=target/eureka-server-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app/eureka-server.jar
WORKDIR /app
EXPOSE 8761 8762 8763
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]

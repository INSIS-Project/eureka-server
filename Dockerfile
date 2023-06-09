FROM maven:3.9.0-eclipse-temurin-17-alpine AS maven-build
WORKDIR /usr/src/eureka-server
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre-alpine AS app-runtime
WORKDIR /app
COPY --from=maven-build /usr/src/eureka-server/target/*.jar ./eureka-server.jar
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]

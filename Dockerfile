FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY ./target/service-registry.jar /app
EXPOSE 8081
CMD ["java", "-jar", "service-registry.jar"]
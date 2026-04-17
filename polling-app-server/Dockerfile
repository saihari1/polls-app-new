# Build stage
FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /app

# Copy the pom.xml file and the source code
COPY pom.xml .
COPY src ./src

# Run the Maven build command
RUN mvn clean package -DskipTests

# Second stage: running the application
FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the port the app will run on
EXPOSE 8090

# Command to run the Java application
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8090"]

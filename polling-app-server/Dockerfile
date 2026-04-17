# Step 1: Build Stage
FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom.xml file into the image
COPY pom.xml .

# Copy the src directory into the image
COPY src ./src

# Run Maven build to package the app
RUN mvn clean package -DskipTests

# Step 2: Runtime Stage (production)
FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Copy the built .jar file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8090

# Command to run the Java application
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8090"]

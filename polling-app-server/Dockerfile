# Use the official Java 17 base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host machine to the container
COPY target/polls-1.0.0.jar 

# Expose port 8090
EXPOSE 8090

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "polls-1.0.0.jar","--server.port=8090"]

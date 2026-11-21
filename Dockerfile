# Use JDK Alpine image as base
FROM eclipse-temurin:25-jdk-alpine AS builder

# Set working directory inside the image
WORKDIR /app

# Copy the JAR file from your build step into the image
# Adjust the path as per your project structure
COPY target/*.jar app.jar

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
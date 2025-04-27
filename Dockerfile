# Use official OpenJDK 21 slim image as base
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built jar file to the app directory
COPY auth-service-0.0.1-SNAPSHOT.jar app.jar

# Expose the port (Render needs 8080)
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]

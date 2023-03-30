FROM openjdk:19-alpine

# Set the working directory
WORKDIR /app

# Copy the application jar file
COPY target/basic_java_microservice.jar my-application.jar

# Expose the port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "my-application.jar"]
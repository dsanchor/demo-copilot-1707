# Use OpenJDK 17 as the base image
FROM openjdk:17

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Copy comomand to copy the application's jar to the container
COPY target/*.jar user-management-api.jar


# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/user-management-api.jar"]
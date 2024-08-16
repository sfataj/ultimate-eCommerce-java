# Use OpenJDK 8 as the base image
FROM openjdk:8

# Expose port 8080 for the application
EXPOSE 8080

# Add the WAR file to the container
ADD target/sampleapp.war /sampleapp.war

# Define the entry point to run the WAR file
ENTRYPOINT ["java", "-jar", "/sampleapp.war"]

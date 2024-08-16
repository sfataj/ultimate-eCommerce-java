# Use OpenJDK 8 as the base image
FROM openjdk:8

# Expose port 8080 for the application
EXPOSE 8080

# Add the WAR file to the container
ADD target/MyECommerce-1.0.0.war /MyECommerce-1.0.0.war

# Define the entry point to run the WAR file
ENTRYPOINT ["java", "-jar", "/MyECommerce-1.0.0.war"]

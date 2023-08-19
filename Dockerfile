# Use an official OpenJDK runtime as the base image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot executable JAR file into the container
COPY target/ServiceRegistry-0.jar /app/ServiceRegistry-0.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 5000

# Specify the command to run your Spring Boot application
#CMD ["java", "-jar", "ServiceRegistry-0.jar"]
ENTRYPOINT ["java", "-jar", "ServiceRegistry-0.jar"]
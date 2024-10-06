# Use a base image that has Java installed
 FROM openjdk:11-jre-slim
# FROM openjdk:17-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/maigolab_hello-1.0.0.jar app.jar

# Expose the port your application runs on (adjust as needed)
EXPOSE 9090

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

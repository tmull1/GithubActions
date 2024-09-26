# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application
RUN ./gradlew build

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "build/libs/your-app.jar"]

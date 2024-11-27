# Stage 1: Build the application using Maven
FROM maven:3.8-openjdk-17 AS builder

# Set the working directory
WORKDIR /app

# Copy the pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy the source code and build the application
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Create a lightweight image for running the application
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file from the builder stage
COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar my-app.jar 

# Expose the port the application will run on (adjust as needed)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "my-app.jar"]


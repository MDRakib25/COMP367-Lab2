# Use an official Maven image as a parent image for building the project
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

# Use an openjdk image to run the application
FROM openjdk:17
WORKDIR /app
# Copy the WAR file from the build stage
COPY --from=build /app/target/COMP367-Lab2.war /app/COMP367-Lab2.war

# Expose port 8080 (default for web applications)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/COMP367-Lab2.war"]

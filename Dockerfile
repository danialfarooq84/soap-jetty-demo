# Use OpenJDK 25 base image
FROM eclipse-temurin:25-jdk

# Set working directory
WORKDIR /app

# Copy the JAR file into the image
COPY soap-jetty-demo-1.0-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run with required module-opens flag
ENTRYPOINT ["java", "--add-opens", "java.base/jdk.internal.misc=ALL-UNNAMED", "-jar", "app.jar"]

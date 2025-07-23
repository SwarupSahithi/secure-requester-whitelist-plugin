# Use official Maven with JDK 17
FROM maven:3.9.6-eclipse-temurin-17 AS builder

# Set working directory
WORKDIR /app

# Copy source code into container
COPY . .

# Build the plugin
RUN mvn clean install

# Optional: You can create a slim runtime container if you're deploying elsewhere
# But for plugin development/testing, building it is usually sufficient

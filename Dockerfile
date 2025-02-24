# Usa una imagen oficial de Java
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el JAR generado en `target/`
COPY target/Employees-Management-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto de la aplicación
EXPOSE 8080

# Ejecuta la aplicación
CMD ["java", "-jar", "app.jar"]
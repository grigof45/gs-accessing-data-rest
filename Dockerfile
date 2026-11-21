# Используем базовый образ с Java. Можно взять и другие, например eclipse-temurin или openjdk
FROM eclipse-temurin:25-jdk

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем собранный JAR-файл в контейнер. Подставьте свой путь, если собираете иначе
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Указываем команду для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]
FROM eclipse-temurin:17-jdk
ADD target/final-software-project.jar final-software-project.jar
EXPOSE 3003
ENTRYPOINT ["java","-jar", "final-software-project.jar"]
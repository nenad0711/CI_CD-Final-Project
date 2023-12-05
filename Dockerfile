FROM eclipse-temurin:17-jdk-jammy
ADD target/final-software-project.jar final-software-project.jar
EXPOSE 3003
CMD ["java","-jar", "final-software-project.jar"]
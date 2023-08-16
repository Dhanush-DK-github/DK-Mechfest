FROM maven:3.6.3-jdk-8 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:8-jre-slim
COPY --from=build /target/Demo10010_Spring_Boot_Mechanical_Sympo-0.0.1-SNAPSHOT.war Demo10010_Spring_Boot_Mechanical_Sympo.war
EXPOSE 8080
ENTRYPOINT [ "java","-war","Demo10010_Spring_Boot_Mechanical_Sympo.war" ]
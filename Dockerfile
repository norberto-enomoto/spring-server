# FROM store/oracle/serverjre:8
FROM openjdk:8u212-jdk-alpine3.9

LABEL maintainer 'Norberto Hideaki Enomoto <norberto.enomoto@dxc.com>'

COPY target/swagger-spring-1.0.0.jar /

EXPOSE 8181

CMD java -jar swagger-spring-1.0.0.jar

# criar imagem
# docker image build -t enomoto/java-microservice .

# executar container
# docker container run -it -p 8181:8181 enomoto/java-microservice
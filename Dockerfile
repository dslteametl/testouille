FROM maven
EXPOSE 8080
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD ./Back /usr/src/app
RUN mvn install
RUN ls ./target
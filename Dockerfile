FROM openjdk:alpine

COPY . /origin

WORKDIR /origin

RUN ./gradlew build && \
    cp build/libs/*.jar /app.jar && \
    rm -rf /origin

WORKDIR /

CMD [ "java", "-jar", "app.jar" ]

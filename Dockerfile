FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
COPY . /optim
WORKDIR /optim
ENTRYPOINT /bin/sh && echo hello && pwd && java -cp target/deps/pngtastic-0.5.jar -jar target/image-web-optimizer-0.0.2-SNAPSHOT.jar /in /out && tail -f /dev/null
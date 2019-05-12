FROM <registry>/jilsan-docker-base
WORKDIR /app
COPY  build ./build
COPY ./DockerfileSpringBoot ./Dockerfile
COPY ./springboot.sh .
ENV  PATH=$PATH:/app:.
RUN chmod +x /app/build
RUN chmod -R 777 /app
CMD [/bin/bash]

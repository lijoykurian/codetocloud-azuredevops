FROM <registry>/jilsan-docker-base
WORKDIR /app
RUN apt-get update -y 
RUN apt install -y zip unzip
ENV  PATH=$PATH:/app:.
COPY  build ./build
RUN chmod +x /app/build
RUN chmod -R 777 /app
COPY ./DockerfileNginx ./Dockerfile
CMD [/bin/bash]

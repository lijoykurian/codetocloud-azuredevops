FROM <registry>/jilsan-docker-base
WORKDIR /app
RUN apt-get update -y 
RUN apt install -y zip unzip
COPY  build ./build
ENV  PATH=$PATH:/app:.
RUN chmod +x ./build
RUN chmod -R 777 /app
COPY ./DockerfileDotNet ./Dockerfile
COPY ./boot.sh ./boot.sh
CMD [/bin/bash]
FROM ubuntu:18.04
ENTRYPOINT []
WORKDIR /app
RUN  apt-get update
RUN  apt-get --assume-yes install apt-transport-https   ca-certificates   curl   gnupg-agent   software-properties-common
RUN  curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -
RUN  apt-key fingerprint 0EBFCD88
RUN  add-apt-repository "deb https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable"
RUN  apt-get --assume-yes update
RUN  apt-get --assume-yes install docker-ce-cli 
RUN  apt-get --assume-yes install zip unzip
CMD ["/bin/bash"]

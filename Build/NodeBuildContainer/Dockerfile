from node:8.15.1-jessie
RUN npm install -g @angular/cli
RUN apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean
RUN apt install -y zip unzip
Entrypoint []
CMD [ "/bin/bash" ]
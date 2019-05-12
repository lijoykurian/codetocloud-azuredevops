from mcr.microsoft.com/dotnet/core/sdk:2.2
RUN apt-get update -y && \
     apt-get upgrade -y && \
     apt-get dist-upgrade -y && \
     apt-get -y autoremove && \
     apt-get clean
RUN apt install -y zip unzip
Entrypoint []
CMD [/bin/bash]
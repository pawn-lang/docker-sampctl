FROM ubuntu:bionic AS dev
RUN apt-get update && \
    apt-get install -y curl \
                       wget \
                       sudo \
                       gcc \
                       gcc-multilib \
                       make \
                       cmake \
                       git

WORKDIR /app
RUN curl https://raw.githubusercontent.com/Southclaws/sampctl/master/install-deb.sh | sh

CMD /bin/bash
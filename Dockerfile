FROM node:lts-slim
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.0.1"

RUN apt-get -o Acquire::Check-Valid-Until=false update && apt-get -y install git wget bzip2 python python-pip build-essential
RUN mkdir -p /tmp/phantomjs && cd /tmp/phantomjs && wget -q https://github.com/Medium/phantomjs/releases/download/v2.1.1/phantomjs-2.1.1-linux-x86_64.tar.bz2

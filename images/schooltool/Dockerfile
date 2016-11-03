FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -yq install ssh && apt-get clean

RUN apt-get update && apt-get -yq install bzr make && apt-get clean

RUN apt-get update && apt-get -yq install build-essential gettext enscript \
            python-dev python-virtualenv \
            ttf-ubuntu-font-family ttf-liberation \
            libicu-dev libxslt1-dev libfreetype6-dev libjpeg-dev \
            redis-server subversion xvfb

RUN apt-get update && apt-get -yq install language-pack-en

RUN apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD authorized_keys /root/.ssh/authorized_keys

RUN mkdir /var/run/sshd && \
    chmod 700 ~/.ssh && \
    chmod 600 ~/.ssh/authorized_keys

RUN adduser schooltool --disabled-password --gecos ""

ADD run.sh /run.sh

RUN chmod 755 /run.sh

CMD /run.sh
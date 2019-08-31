FROM blakedickie/ubuntu:latest
MAINTAINER Blake Dickie <bdickie@landora.net>

RUN apt-get update && apt-get install -y openssh-server software-properties-common
RUN mkdir /var/run/sshd

RUN add-apt-repository ppa:costamagnagianfranco/borgbackup
RUN apt-get update && apt-get install -y borgbackup

RUN useradd -m borg

EXPOSE 22

ADD entrypoint.sh entrypoint.sh
CMD ["./entrypoint.sh"]


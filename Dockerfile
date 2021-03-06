FROM ubuntu:16.04

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y

RUN apt-get install -y vim

RUN apt-get install -y software-properties-common wget
RUN add-apt-repository http://dl.openfoam.org/ubuntu
RUN sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"

# http://askubuntu.com/questions/104160/method-driver-usr-lib-apt-methods-https-could-not-be-found-update-error
RUN apt-get install apt-transport-https

RUN apt-get update
RUN apt-get -y install openfoam4

RUN apt-get -y install mlocate

RUN echo "source /opt/openfoam4/etc/bashrc" >> /root/.bashrc
RUN echo "source /etc/bash.bashrc" >> /root/.bashrc

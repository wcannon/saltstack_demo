FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget 
RUN wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/2017.7/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
RUN echo 'deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/2017.7 xenial main' > /etc/apt/sources.list.d/saltstack.list
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y salt-master

EXPOSE 4505 4506

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

CMD "/usr/local/bin/run.sh"

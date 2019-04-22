FROM ubuntu:19.04

RUN apt-get update; apt-get upgrade -y
RUN apt-get install git curl -y
RUN apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

RUN git config --global user.name "Michael Barkdoll"
RUN git config --global user.email "mabarkdoll@siu.edu"

RUN mkdir /ldap
WORKDIR /ldap
RUN git clone https://github.com/necouchman/guacamole-client.git
WORKDIR /ldap/guacamole-client
RUN git checkout master

RUN git pull origin jira/234

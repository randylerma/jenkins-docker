FROM docker.io/jenkins/jenkins:lts
USER root

RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

user jenkins

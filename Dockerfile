FROM docker.io/jenkins
USER root

RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh

# Jenkins docker
* Jenkins CI with docker client
* How to deploy:

>#git clone this repo and cd into repo directory

>docker build -t jenkins-docker .

* How to run container:

>docker volume create --name jenkins_home

>docker run -u root --publish 8080:8080 --publish 50000:50000 \
>	--volume /var/run/docker.sock:/var/run/docker.sock \
>	--volume jenkins_home:/var/jenkins_home \
>	--detach --restart unless-stopped --memory 800000000 \
>	--name jenkins jenkins-docker

* Initial setup password location and URL.

> cat /var/lib/docker/volumes/jenkins_home/_data/secrets/initialAdminPassword

URL http://<IP_localhost>:8080/

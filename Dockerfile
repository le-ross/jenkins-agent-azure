FROM jenkins/ssh-slave

RUN apt-get update -y

# Install docker
RUN apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   stretch \
   stable"
RUN apt-get update -y && apt-get install docker-ce -y
RUN usermod -a -G docker jenkins

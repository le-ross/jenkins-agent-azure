FROM jenkins/ssh-slave

RUN apt update -y
RUN apt install apt-transport-https ca-certificates curl software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

RUN apt update -y
RUN apt install -y docker-ce
RUN systemctl status docker

RUN usermod -aG docker jenkins

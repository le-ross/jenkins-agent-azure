FROM jenkins/ssh-slave

RUN apt-get update && apt-get install -y apt-transport-https
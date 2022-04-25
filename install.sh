#!/bin/sh

sudo apt upgrade
sudo apt update

#REMOVER DOCKER
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get install \
ca-certificates \
curl \
gnupg \
lsb-release

#INSTALL DOCKER

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo chmod 666 /var/run/docker.sock

#INSTALL DOCKER-COMPOSE

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#INSTALL MAVEN
sudo apt install maven
mvn --version

sudo service docker start

sudo service docker status

sudo vi /etc/group


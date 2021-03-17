#!/bin/bash

### Variables
project_name=$1
node_version=$2
docker_compose_version=$3

if [ -z "${node_version}" ]; then
  node_version=14.x
fi

if [ -z "${docker_compose_version}" ]; then
  docker_compose_version=1.26.2
fi

### Updating & upgrading
sudo apt upgrade
sudo apt update

### Firewall
sudo ufw allow 'OpenSSH'
sudo ufw enable

### Project
echo "Criando diretório do projeto ${project_name} ..."
sudo mkdir "/usr/${project_name}"
sudo chmod +x "/usr/${project_name}"
sudo chmod -R 755 "/usr/${project_name}"

### Packages
# cURL
echo "Instalando cURL ..."
sudo apt install curl

# Yarn
echo "Instalando yarn ..."
sudo npm i -g yarn

# Git
echo "Instalando git ..."
sudo apt install git

# NodeJs
echo "Preparando instalação do nodejs ..."
echo "Baixando nodesource ..."
sudo curl -sL "https://deb.nodesource.com/setup_${node_version} -o nodesource_setup.sh"
echo "Instalando nodesource ..."
sudo bash nodesource_setup.sh
echo "Instalando nodejs ..."
sudo apt install nodejs
echo "Instalando build-essential ..."
sudo apt install build-essential

# Docker
echo "Instalando docker ..."
sudo apt install docker.io
echo "Verificando versão instalada do docker ..."
sudo docker -v

# Docker-compose
echo "Instalando docker-compose ..."
sudo curl -L "https://github.com/docker/compose/releases/download/${docker_compose_version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo "Instalando docker-compose ..."
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose --version



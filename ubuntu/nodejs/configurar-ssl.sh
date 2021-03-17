#!/bin/bash

echo "Iniciando configuração do certificado SSL ..."

chmod -R 755 .
chmod +x ./ssl/init-letsencrypt.sh
cd ./ssl
docker-compose up --rm -d
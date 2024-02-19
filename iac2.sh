#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install unzip wget apache2 -y

echo "Baixando e copiando os arquivos da aplicação..."

TMP_DIR="/tmp/"
APP_DIR="/var/www/html"


URL="https://github.com/giovanecs/page-login-instagram/archive/refs/heads/main.zip"

wget -P "$TMP_DIR" "$URL"
unzip "$TMP_DIR/main.zip" -d "$TMP_DIR"

cp -R "$TMP_DIR/page-login-instagram-main/"* "$APP_DIR"

echo "Concluído!"
#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o apache2..."

apt-get install apache2 -y
systemctl start apache2
systemctl enable apache2

echo "Instalando o unzip..."
apt-get install unzip -y

cd /tmp

echo "favor baixar a aplicação do Github com o comando abaixo que estará zipado:"
echo "wget 'link do repositorio do Github'"
echo "Dezipar com o seguinte comando: unzip arquivo.zip"
echo "Siga para a o repositorio com: cd 'nome do repositorio da aplicação'"
echo  "Copie o repositório para a seguinte area com o comando abaixo:"
echo  "cp -R * /var/www/html/"
echo  "Permitindo execução do script..."
echo  chmod +x iasswa.sh

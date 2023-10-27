#!/bin/bash 

sudo apt-get update
sudo apt-get -y install nginx
systemctl is active nginx
sudo systemctl start nginx

mkdir /var/www/html/labs html

chown $USER:root /var/www/html/labs

ln -s /var/www/html/labs html

cd html

touch index.html

echo "<html><body><h1>Hello world</h1></body><html>" >> index.html

cd 

touch websrv.sh
chmod u+x websrv.sh

nano websrv.sh
echo "Checking if nginx is installed"
sleep 4

if ! which nginx > /dev/null 2>&1; then
  echo "Nginx not installed"

echo "Installing NGINX"
sudo apt-get -y install nginx
sleep 4
fi
echo "Nginx already installed"

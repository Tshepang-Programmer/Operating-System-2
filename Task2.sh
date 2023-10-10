#!/bin/bash 

sudo apt-get udate
sudo apt-get -y install nginx
systemctl is active nginx
sudo systemctl start nginx

mkdir /var/www/html/labs html

chown $USER:root /var/www/html/labs

ln -s /var/www/html/labs html

cd html

touch index.html

echo "<html><body><h1>Hello world</h1></body><html>" >> index.html
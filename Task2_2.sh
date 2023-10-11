#!/bin/bash 

echo "Updating"

sudo apt-get update
sleep 4
echo "Installing NGINX"
sudo apt-get -y install nginx
sleep 1
echo "Checking Status" 

systemctl is active nginx
sleep 1

echo "Starting NGINX"
sudo systemctl start nginx

if (systemctl is-active NGINX)
then 

echo "Creating lab directory"
sleep 4
mkdir /var/www/html/labs html


echo "Changing user ownership"
sleep 4
chown $USER:root /var/www/html/labs

echo "Creating symbolic link to html"
sleep 4

ln -s /var/www/html/labs html

echo "Change working  directory"
sleep 4
cd html

echo "Creating html file"
sleep 4
touch index.html

else 
echo "Error NGINX is not active"
exit 1

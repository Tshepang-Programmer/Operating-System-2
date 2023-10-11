#!/bin/bash 

# TMD Letssoalo 218575912 & D Mosito 222516860

echo "Updating"

sudo apt-get update
sleep 4
echo "Installing NGINX"
sudo apt-get -y install nginx
sleep 1
echo "Checking Status" 

systemctl is-active nginx
sleep 1

echo "Starting NGINX"
sudo systemctl start nginx

systemctl is-active nginx
sleep 1

if (systemctl is-active nginx)
then 

echo "Creating lab directory"
sleep 4
sudo mkdir /var/www/html/labs html


echo "Changing user ownership"
sleep 4
sudo chown $USER:root /var/www/html/labs

echo "Creating symbolic link to html"
sleep 4

sudo ln -s /var/www/html/labs html

echo "Change working  directory"
sleep 4
cd html

echo "Creating html file"
sleep 4
touch index.html

echo "Opening index"

sleep 3
nano index.html

else 
echo "Error NGINX is not active"
exit 1

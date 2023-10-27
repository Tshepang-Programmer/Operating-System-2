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

#!/bin/bash

if ! which nginx > /dev/null 2>&1; then
  echo "Nginx not installed"

echo "Installing NGINX"
sudo apt-get -y install nginx
sleep 4
fi
echo "Nginx already installed"
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
sudo touch index.html

#echo "Opening index"

#sleep 3
#nano index.html

else 
echo "Error NGINX is not active"
exit 1
fi


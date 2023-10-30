#!/bin/bash 
# TMD Letssoalo 218575912 & D Mosito 222516860

echo "Updating"

sudo apt-get update
sleep 4
clear


echo "Checking if nginx is installed"
sleep 4

if ! which nginx > /dev/null 2>&1; 
then
  echo "Nginx not installed"
sleep 2
echo "Installing NGINX"
sleep 4
sudo apt-get -y install nginx
clear
fi
sleep 4
echo "Nginx installed"
sleep 2
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

echo "Adding student information to html file"

sudo echo "<!DOCTYPE html>" >> index.html
sudo echo "<html lang="en">" >> index.html
sudo echo "<head>" >> index.html
sudo echo "  <meta charset="UTF-8">" >> index.html
sudo echo "    <meta name="viewport" content="width=device-width, initial-scale=1.0">" >> index.html
sudo echo "    <title>Document</title>" >> index.html
sudo echo "</head>" >> index.html
sudo echo "<body>" >> index.html
sudo echo "    <h1> STUDENT INFORMATION PAGE </h1> " >> index.html
sudo echo "     <P>" >> index.html
sudo echo "                    Student 1" >> index.html
sudo echo "        Initials:  TMD" >> index.html
sudo echo "        Names: Tshepang Mugova David Letsoalo" >> index.html
sudo echo "        Student no: 218575912" >> index.html
sudo echo "        Course: Electrical Engineering : Computer Systems" >> index.html
sudo echo "  " >> index.html
sudo echo "  " >> index.html
sudo echo "                   Student 2" >> index.html
sudo echo "        Initials:  D" >> index.html
sudo echo "        Names: Dimpho Mosito" >> index.html
sudo echo "        Student no: 222516860" >> index.html
sudo echo "        Course: Electrical Engineering : Computer Systems" >> index.html
sudo echo "  " >> index.html
sudo echo "    </P>" >> index.html
sudo echo "</body>" >> index.html
sudo echo "</html>" >> index.html

echo "Information has been added to index.html"
sleep 4
echo "Viewing index.html"
sleep 4

cat index.html


else 
echo "Error NGINX is not active"
exit 1
fi

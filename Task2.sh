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

echo "<!DOCTYPE html>" >> index.html
echo "<html lang="en">" >> index.html
echo "<head>" >> index.html
echo "  <meta charset="UTF-8">" >> index.html
echo "    <meta name="viewport" content="width=device-width, initial-scale=1.0">" >> index.html
echo "    <title>Document</title>" >> index.html
echo "</head>" >> index.html
echo "<body>" >> index.html
echo "    <h1> STUDENT INFORMATION PAGE </h1> " >> index.html
echo "     <P>" >> index.html
echo "                    Student 1" >> index.html
echo "        Initials:  TMD" >> index.html
echo "        Names: Tshepang Mugova David Letsoalo" >> index.html
echo "        Student no: 218575912" >> index.html
echo "        Course: Electrical Engineering : Computer Systems" >> index.html
echo "  " >> index.html
echo "  " >> index.html
echo "                   Student 2" >> index.html
echo "        Initials:  D" >> index.html
echo "        Names: Dimpho Mosito" >> index.html
echo "        Student no: 222516860" >> index.html
echo "        Course: Electrical Engineering : Computer Systems" >> index.html
echo "  " >> index.html
echo "    </P>" >> index.html
echo "</body>" >> index.html
echo "</html>" >> index.html

echo "Information has been added to index.html"
sleep 
echo "Viewing index.html"
sleep 4

cat index.html


else 
echo "Error NGINX is not active"
exit 1
fi


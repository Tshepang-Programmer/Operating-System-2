echo "Adding student information to html file"
sleep 4
sudo echo " <!DOCTYPE html> " >>index.html
sudo echo "<html lang="en">" >>index.html
sudo echo "<head>" >>index.html
sudo echo "  <meta charset="UTF-8">" >>index.html
sudo echo "    <meta name="viewport" content="width=device-width, initial-scale=1.0">" >>index.html
sudo echo "    <title>Document</title>" >>index.html
sudo echo "</head>" >>index.html
sudo echo "<body>" >>index.html
sudo echo "    <h1> STUDENT INFORMATION PAGE </h1> " >>index.html
sudo echo "     <P>" >>index.html
sudo echo "                    Student 1" >>index.html
sudo echo "        Initials:  TMD" >>index.html
sudo echo "        Names: Tshepang Mugova David Letsoalo" >>index.html
sudo echo "        Student no: 218575912" >>index.html
sudo echo "        Course: Electrical Engineering : Computer Systems" >>index.html
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

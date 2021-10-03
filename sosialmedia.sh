#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 php php-mysql -y
sudo apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip
sudo apt-get install mariadb-server -y
sudo apt-get install unzip -y
cd /var/www/html && sudo rm -Rf * && cd /
wget https://github.com/sdcilsy/sosial-media/archive/master.zip
unzip master.zip
sudo mv sosial-media-master/* /var/www/html
sudo mysql -e "CREATE USER 'devopscilsy'@'localhost' IDENTIFIED BY '1234567890';"
sudo mysql -e "grant all privileges on *.* to 'devopscilsy'@'localhost'"
sudo mysql -e "flush privileges"
sudo mysql -e "CREATE DATABASE dbsosmed"
sudo mysql -u devopscilsy -p1234567890 dbsosmed < /var/www/html/dump.sql

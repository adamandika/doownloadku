#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo apt-get install unzip -y
wget https://github.com/sdcilsy/landing-page/archive/master.zip
unzip master.zip
sudo rm /var/www/html/index.html
sudo mv landing-page-master/* /var/www/html

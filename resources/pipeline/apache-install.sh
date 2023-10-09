#!/bin/bash

# Install apache2 with php8.2
sudo apt install libapache2-mod-php8.2
sudo a2enmod php8.2

# Add chmod +x to working directory
sudo chmod +x /home/runner/

# Add conf to apache
sudo cat resources/pipeline/apache.conf | tee -a /etc/apache2/apache2.conf >> /dev/null

# Add domain to hosts
sudo echo "127.0.0.1 pipeline-local.com" | tee -a /etc/hosts >> /dev/null

# Add domain to sites available
sudo cat resources/pipeline/virtual-host.conf | tee -a /etc/apache2/sites-available/000-default.conf >> /dev/null

# Restart apache
sudo service apache2 start

# Ping
ping_status=$(curl -s -o /dev/null -w "%{http_code}" http://pipeline-local.com)
if [[ ping_status == '200' ]]; then
	echo 'Domain pipeline-local.com works!';
else
	echo 'Cannot connect to pipeline-local.com!';
	exit 1;
fi
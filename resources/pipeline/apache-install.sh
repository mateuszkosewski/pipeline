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

res=$(curl -s -w "%{http_code}" http://pipeline-local.com --data-binary '{"head":5}')
body=${res::-3}
status=$(printf "%s" "$res" | tail -c 3)

if [ "$status" -ne "200" ]; then
    echo "Error: HTTP repsonse is $status"
    echo $body
    exit 1;
fi
    
echo 'Connection is correct!'
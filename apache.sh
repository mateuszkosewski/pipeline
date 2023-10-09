#!/bin/bash

sudo apt install libapache2-mod-php8.2
sudo a2enmod php-8.2

# Add domain to sites available
sudo cat foo.conf | tee -a /etc/apache2/sites-available/000-default.conf >> /dev/null

# Add domain to hosts
sudo echo "127.0.0.1 pipeline-local.com" | tee -a /etc/hosts >> /dev/null

# Enable apache
#sudo service apache2 start

#sudo adduser www-data root
#sudo chown www-data:www-data /home/runner
#sudo chown www-data:www-data /home/runner/work/pipeline
#sudo chown www-data:www-data /home/runner/work/pipeline/pipeline

sudo chmod +x /home/runner/

sudo cat apache.conf | tee -a /etc/apache2/apache2.conf >> /dev/null

sudo service apache2 start

# Open 
#curl -s -o /dev/null -w "%{http_code}" http://pipeline-local.com
curl http://pipeline-local.com

#cat /var/log/apache2/error.log
#cat /etc/apache2/apache2.conf

#cd /home/runner/work/pipeline/pipeline && ls -l
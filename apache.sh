#!/bin/bash

mkdir /var/www/pipeline
mv /home/runner/work/pipeline/pipeline /var/www/pipeline

ls -l /var/www/pipeline

# Add domain to sites available
#sudo cat foo.conf | tee -a /etc/apache2/sites-available/000-default.conf >> /dev/null

# Add domain to hosts
#sudo echo "127.0.0.1 pipeline-local.com" | tee -a /etc/hosts >> /dev/null

# Enable apache
#sudo service apache2 start

#cat /etc/apache2/apache2.conf

# Open 
#curl -s -o /dev/null -w "%{http_code}" http://pipeline-local.com
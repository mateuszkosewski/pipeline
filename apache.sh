#!/bin/bash

# Add domain to sites available
#sudo cat foo.conf | tee -a /etc/apache2/sites-available/000-default.conf >> /dev/null

# Add domain to hosts
virutal_host="<VirtualHost *:80>
    ServerName pipeline-local.com
    DocumentRoot $1
    ErrorLog ${APACHE_LOG_DIR}/pipeline_error.log
    CustomLog ${APACHE_LOG_DIR}/pipeline_access.log combined
</VirtualHost>";

echo $virutal_host;

#sudo echo "127.0.0.1 pipeline-local.com" | tee -a /etc/hosts >> /dev/null

# Enable apache
#sudo service apache2 start

#cat /etc/apache2/sites-available/000-default.conf && cat /etc/hosts

# Open 
#curl -s -o /dev/null -w "%{http_code}" http://pipeline-local.com
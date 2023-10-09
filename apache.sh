#!/bin/bash

# Add domain to sites available
sudo cat foo.conf | tee -a /etc/apache2/sites-available/000-default.conf >> /dev/null

# Add domain to hosts
sudo echo "127.0.0.1 pipeline-local.com" | tee -a /etc/hosts >> /dev/null

# Enable apache
sudo service apache2 start

cat /etc/apache2/sites-available/000-default && cat /etc/hosts

# Open 
curl -s -o /dev/null -w "%{http_code}" http://pipeline-local.com
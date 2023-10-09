#!/bin/bash

#sudo mkdir /var/www/pipeline

#echo '<?php phpinfo();' > /var/www/pipeline/index.php

#sudo cat apache.conf >> /etc/apache2/apache.conf

# Add domain to sites available
sudo cat foo.conf | tee -a /etc/apache2/sites-available/000-default.conf >> /dev/null

# Add domain to hosts
sudo echo "127.0.0.1 pipeline-local.com" | tee -a /etc/hosts >> /dev/null

# Enable apache
sudo service apache2 start

sudo adduser www-data root
sudo chown www-data:www-data /home/runner/work/pipeline/pipeline

# Open 
curl -s -o /dev/null -w "%{http_code}" http://pipeline-local.com
#curl http://pipeline-local.com

#cd /home/runner/work/pipeline/pipeline && ls -l
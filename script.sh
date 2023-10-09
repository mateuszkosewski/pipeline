#!/bin/bash

# Get the currently installed PHP version
php_version=$(php -v | grep -oP '(?<=PHP )(\d+\.\d+)')

# Compare the installed PHP version with the required version
if [[ "$php_version" == "8.2" ]]; then
    echo "PHP 8.2 is installed."
else
    echo "PHP 8.2 is not installed. Currently installed PHP version is $php_version."
    exit 1;
fi


# Get the currently installed MySQL version
mysql_version=$(mysql --version | grep -oP '(?<=Ver )(\d+\.\d+)')

# Use regex matching to extract the MySQL version
if [[ "$mysql_version" == "8.0" ]]; then
    echo "MySQL version 8.0 is correct"
else
    echo "MySQL version is incorrect - current version $mysql_version"
    exit 1;
fi


# Get NodeJS version
nodejs_version=$(node -v| grep -oP '(\d+\.\d+)')

# Use regex matching to extract the MySQL version
if [[ "$nodejs_version" == "v18.17" ]]; then
    echo "NodeJS version is correct 18.17"
else
    echo "NodeJS version is incorrect. Current version: $nodejs_version"
    exit 1;
fi
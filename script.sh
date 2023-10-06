#!/usr/bin/env bash

version=$(php -v|grep --only-matching --perl-regexp "(PHP )\d+\.\\d+\.\\d+"|cut -c 5-7)

if [ "$version" == '8.2' ]; then
echo 'Php version is correct'
else
echo "Php version is Wrong";
exit 1;
fi


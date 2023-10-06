#!/usr/bin/env bash

version=$(php -v|grep --only-matching --perl-regexp "(PHP )\d+\.\\d+\.\\d+"|cut -c 5-7)

if [ "$version" == '7.2' ]; then
echo 'Correct'
else
echo "Wrong";
exit 1;
fi


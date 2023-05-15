#!/bin/sh
service mysql start

echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql
echo "CREATE USER 'shbi'@'%' IDENTIFIED BY 'azerty123';" | mysql
echo "GRANT ALL ON wordpress.* TO 'shbi'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

# create a root user and give hime password

# TO DO : comment port and ip address in config file
# to be accessible by other sevices and network

service mysql stop

exec "$@"

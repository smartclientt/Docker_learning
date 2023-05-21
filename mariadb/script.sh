#!/bin/sh



service mysql start
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
# check if the database is already exit
sleep 1
echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql
echo "CREATE USER 'shbi'@'%' IDENTIFIED BY 'azerty123';" | mysql
echo "GRANT ALL ON wordpress.* TO 'shbi'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
sleep 1
# create a root user and give hime password

# TO DO : comment port and ip address in config file
# to be accessible by other sevices and network
service mysql stop


exec "$@"

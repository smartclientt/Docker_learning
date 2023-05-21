#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ]; then

mkdir -p /var/www/html/

chmod -R 777 /var/www/html/

cd /var/www/html/

wp core download --path=/var/www/html --allow-root 

wp core config --allow-root --path=/var/www/html/ --dbname="wordpress" --dbuser="shbi" --dbpass="azerty123" --dbhost="mariadb" --skip-check

wp core install --allow-root --path=/var/www/html/ --url="localhost" --title="Smart Wordpress" --admin_user="smart" --admin_password="azerty123" --admin_email="shbi@gmail.com"

wp user create --allow-root user1 user1@gmail.com --role=author --user_pass="user1"

wp plugin update --all --allow-root

fi

sed -ie 's/listen = .*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

exec "php-fpm7.3" "-F"
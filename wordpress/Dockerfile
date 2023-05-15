FROM debian:buster

RUN apt-get update -y && apt-get install -y curl less php php-fpm php-mysql
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

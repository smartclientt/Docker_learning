FROM debian:buster

RUN apt-get update -y && apt-get install -y curl less php php-curl php7.3-fpm  php-mysql
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php/
RUN chmod 777 /run/php/

COPY script.sh /

RUN chmod 777 script.sh

ENTRYPOINT ["./script.sh"]

FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y nginx openssl
RUN openssl req -x509 -new -newkey rsa:2048 -nodes -keyout /etc/ssl/private/certkey.key -out /etc/ssl/certs/sslcert.crt -subj "/"

COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
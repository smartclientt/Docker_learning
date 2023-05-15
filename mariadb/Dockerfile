FROM debian:buster
RUN apt-get update
RUN apt-get install -y mariadb-server

COPY script.sh /

RUN chmod 777 script.sh

EXPOSE 3306

ENTRYPOINT ["./script.sh"]

CMD ["mysqld"]
FROM debian:jessie

ENV PG_VERSION 9.3
RUN apt-get update && apt-get -y install \
    postgresql-$PG_VERSION \
    postgresql-contrib-$PG_VERSION

ADD postgresql.conf etc/postgresql/$PG_VERSION/main/postgresql.conf
ADD pg_hba.conf etc/postgresql/$PG_VERSION/main/pg_hba.conf
ADD start.sh start.sh

ENV USER docker
ENV PASS SiHRDZ3Tt13uVVyH0ZST

EXPOSE 5432
CMD ["/start.sh"]

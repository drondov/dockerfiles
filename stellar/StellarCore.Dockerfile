FROM debian:jessie
MAINTAINER Ivan Drondov <idrondov@gmail.com>

RUN apt-get update
RUN apt-get install -y wget 
RUN apt-get install -y libsqlite3-dev libpq-dev

ENV STELLAR_CORE_VERSION=0.6.3-391-708237b0

RUN wget -O stellar-core.deb https://s3.amazonaws.com/stellar.org/releases/stellar-core/stellar-core-${STELLAR_CORE_VERSION}_amd64.deb
RUN dpkg -i stellar-core.deb
RUN rm stellar-core.deb

RUN apt-get install -y curl

COPY ./stellar-core.cfg /conf/stellar-core.cfg
COPY ./stellar.start.sh ./

RUN mkdir -p /data/stellar/bucket
RUN chmod 777 /data/stellar/bucket

# RUN stellar-core --newdb --conf /conf/stellar-core.cfg
# Write 'Root account seed' to config


CMD bash ./stellar.start.sh 
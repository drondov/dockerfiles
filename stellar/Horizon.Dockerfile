FROM debian:jessie
MAINTAINER Ivan Drondov <idrondov@gmail.com>

RUN apt-get update
RUN apt-get install -y wget

ENV HORIZON_VERSION=0.11.0
RUN wget -O horizon.tar.gz https://github.com/stellar/horizon/releases/download/v${HORIZON_VERSION}/horizon-v${HORIZON_VERSION}-linux-amd64.tar.gz
RUN tar -zxvf horizon.tar.gz
RUN mv /horizon-v${HORIZON_VERSION}-linux-amd64/horizon /usr/local/bin
RUN chmod +x /usr/local/bin/horizon
RUN rm -rf horizon.tar.gz /horizon-v${HORIZON_VERSION}-linux-amd64

# Write 'Root account seed' to config


ENV DATABASE_URL="postgres://postgres:555666@postgres_db/postgres?sslmode=disable"
ENV STELLAR_CORE_DATABASE_URL="postgres://postgres:555666@postgres_db/postgres?sslmode=disable"
ENV STELLAR_CORE_URL="http://stellar_core:11626"
ENV LOG_LEVEL="info"
ENV INGEST="true"
ENV PER_HOUR_RATE_LIMIT="72000"
ENV NETWORK_PASSPHRASE="Standalone Network ; February 2017"

COPY ./horizon.start.sh ./

CMD bash ./horizon.start.sh

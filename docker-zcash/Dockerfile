FROM debian:8

MAINTAINER Pavlo Melnyk <pavlik1.618@gmail.com>


RUN apt-get update
RUN apt-get install -y apt-transport-https wget
RUN	wget -qO - https://apt.z.cash/zcash.asc | apt-key add -
RUN echo "deb [arch=amd64] https://apt.z.cash/ jessie main" | tee /etc/apt/sources.list.d/zcash.list
RUN	apt-get update && \
	apt-get -y install zcash && \
	zcash-fetch-params --testnet

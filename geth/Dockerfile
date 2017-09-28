FROM ubuntu

WORKDIR /root

# COPY go1.9.linux-amd64.tar.gz ./
RUN apt-get update && apt-get install -y build-essential git
RUN apt-get install -y wget

RUN wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.9.linux-amd64.tar.gz

ENV GOPATH=$HOME/golang
ENV PATH=$PATH:/usr/local/go/bin
ENV PATH=$PATH:$GOPATH/bin

RUN mkdir -p $GOPATH/src/github.com/ethereum/go-ethereum
COPY go-ethereum $GOPATH/src/github.com/ethereum/go-ethereum

WORKDIR $GOPATH/src/github.com/ethereum/go-ethereum

RUN go get -u github.com/go-redis/redis
RUN go install -v ./cmd/geth

WORKDIR /ethereum
COPY genesis.json .
RUN geth --networkid 15 --datadir /ethereum/data init genesis.json

CMD geth --networkid 15 --rpc --rpcport "8545" --rpccorsdomain "*" --datadir /ethereum/data --port 0 --rpcapi "db,eth,net,web3,personal,web3,miner"
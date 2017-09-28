# Ethereum daemon

### Getting started
```
docker build . -t geth
docker run -p 127.0.0.1:8545:8545 --name geth -d geth
```

### Pre-Allocated account
```
Address: 0xa892c9660a3b6201d7493ebf5b3190b944598632
Private key: f218dfac5764685c2f126b94b2061d00e9d4ccb67c5474fae0b2564b7d2cd425
```

### Connect to container
```
docker exec -it geth bash
geth attach /ethereum/data/geth.ipc
```

### Available commands
```
geth --help
```
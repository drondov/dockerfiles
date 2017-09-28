# Ripple daemon

### Getting started
```
docker build . -t rippled
docker run -p 127.0.0.1:6005:6005 --name rippled -d rippled
```

### Connect to container
```
docker exec -it rippled bash
```

### Available commands
```
rippled --help
```
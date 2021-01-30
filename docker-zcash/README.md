# Zcash in Docker

```
docker build -f Dockerfile -t zcash-regtest .
docker build -f Dockerfile-reg -t zcash-reg .
docker run -it --name zcash-reg -p 8232:8232 zcash-reg
docker exec zcash-reg zcash-cli getinfo
```

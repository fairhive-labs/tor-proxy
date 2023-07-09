# tor-proxy
## Build and detached Run
> docker build -t tor . && docker run -d --rm -p 9050:9050 tor
## Test connection w/o proxy
> curl https://check.torproject.org/api/ip
```json
{"IsTor":false,"IP":"5.196.4.233"}
```
## Test using TOR proxy
> curl -x socks5://localhost:9050 https://check.torproject.org/api/ip
```json
{"IsTor":true,"IP":"5.45.98.162"}
```

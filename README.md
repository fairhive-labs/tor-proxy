# tor-proxy
Access to **darkweb** running a dockerize tor proxy, providing a hidden service (.onion site) based on index.html file content
## Build and detached Run
> docker build -t tor . && docker run --rm -p 5090:9050 --name tor-proxy tor
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

## display onion URL of hidden service 
> docker exec -it tor-proxy cat /var/lib/tor/nginx/hostname
```
3bskeihi3ohynad4ylc4qu6jsbjrmsy2tqzlyfneeuxx4qazqe5hm7id.onion
```
:arrow_up: copy/paste the URL in your web browser - _connected to TOR of course..._ - and you'll access to you **dark** website :jack_o_lantern:
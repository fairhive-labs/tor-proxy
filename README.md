# tor-proxy

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

## Display onion URL of hidden service 
> docker exec -it tor-proxy cat /var/lib/tor/nginx/hostname

You will get something like:

```
3bskeihi3ohynad4ylc4qu6jsbjrmsy2tqzlyfneeuxx4qazqe5hm7id.onion
```
Copy/Paste the URL in your web browser - _connected to TOR, of course !!!_ - ...

... and you'll access to you **dark website** :jack_o_lantern:

## ✋ Tips
- **USE A VPN CONNECTION** before surfing on TOR circuits !
- The hidden service provides a very simple webpage but you can put whatever you want in `/usr/share/nginx/html/` folder...
- You can also send ETH to: **`0xE3C3691DB5f5185F37A3f98e5ec76403B2d10c3E`**
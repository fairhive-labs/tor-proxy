# tor-proxy

> curl https://check.torproject.org/api/ip

{"IsTor":false,"IP":"5.196.4.233"}

> curl -x socks5://localhost:9050 https://check.torproject.org/api/ip

{"IsTor":true,"IP":"5.45.98.162"}
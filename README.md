# tor-proxy

## Build and detached Run
> docker build -t tor . && docker run --rm -p 5090:9050 --name tor-proxy tor
## Test connection w/o proxy
> curl https://check.torproject.org/api/ip
```json
{"IsTor":false,"IP":"5.196.4.233"}
```
## Test using TOR proxy
> curl -x socks5://localhost:5090 https://check.torproject.org/api/ip
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
- The hidden service provides a very simple webpage but you can put whatever you want in `/usr/share/nginx/html/` folder, using `docker volumes` for eg...
- You can tip XMR to: **`42UwTUWzvPUCYKHsrzqGZXCKty3uCL9yGfeQSyy2oY2dRTLmsPFkgpsZgXvCvuV2BHbVDvsQNMyqD1udiKhRomhV4sk2gPE`**

##  Important Notice
We're proud to introduce our TOR proxy and onion site generator. 

This tool is designed to enhance privacy and security for users who wish to access the TOR network and create their own onion sites.

**Legal Use Only**: This tool is provided for legitimate, lawful purposes only. Users are responsible for ensuring that their use of this tool complies with all local, national, and international laws. Any use of this tool for illegal activities is strictly prohibited, and users doing so will be solely responsible for any legal consequences.

We believe in the power of privacy and the potential of the TOR network to protect user identities and promote free speech. However, it's essential to use these tools responsibly and ethically.

Please ensure you're familiar with the legal implications and responsibilities before using this tool.

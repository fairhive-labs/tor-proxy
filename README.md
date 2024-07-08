# tor-proxy

## Build and detached Run

```sh
docker build -t tor . && docker run --rm -p 5090:9050 --name tor-proxy tor
```

## Test connection w/o proxy

```sh
curl https://check.torproject.org/api/ip
```

```json
{"IsTor":false,"IP":"5.196.4.233"}
```

## Test using TOR proxy

```sh
curl -x socks5://localhost:5090 https://check.torproject.org/api/ip
```

```json
{"IsTor":true,"IP":"5.45.98.162"}
```

## Setting Up SOCKS5 Proxy on macOS

To use the Docker-based Tor proxy, follow these steps to configure a SOCKS5 proxy on macOS.

### Instructions to Set Up SOCKS5 Proxy on macOS

1. **Launch System Preferences**:
   - Click on the Apple logo at the top-left corner of your screen.
   - Select "System Preferences" from the drop-down menu.

2. **Open Network Settings**:
   - In the System Preferences window, click on the "Network" icon.

3. **Select Your Network**:
   - In the Network settings, select the active network connection (e.g., Wi-Fi or Ethernet) from the list on the left.

4. **Advanced Settings**:
   - Click on the "Advanced..." button at the bottom right of the window.

5. **Navigate to Proxies Tab**:
   - In the Advanced settings, go to the "Proxies" tab.

6. **Configure SOCKS5 Proxy**:
   - Check the box next to "SOCKS Proxy" to enable it.
   - Enter the following details:
     - **Server**: `127.0.0.1`
     - **Port**: `5090`

7. **Save Settings**:
   - Click "OK" to save the proxy settings.
   - Click "Apply" to apply the settings and close the Network settings.

8. **Verify the Proxy Configuration**:
   - Open your web browser and navigate to a website to ensure that the connection is routed through the Tor network.

### Instructions to Set Up SOCKS5 Proxy on Windows

1. **Open Control Panel**:
   - Press `Win + R`, type `control`, and press `Enter`.

2. **Network and Internet**:
   - Click on "Network and Internet".

3. **Internet Options**:
   - Click on "Internet Options".

4. **LAN Settings**:
   - In the Internet Properties window, go to the "Connections" tab.
   - Click on "LAN settings".

5. **Configure Proxy**:
   - Check the box next to "Use a proxy server for your LAN".
   - Click on the "Advanced" button.
   - Under "Socks", enter the following details:
     - **Address**: `127.0.0.1`
     - **Port**: `5090`

6. **Save Settings**:
   - Click "OK" to close the Proxy Settings window.
   - Click "OK" again to close the LAN Settings window.
   - Click "OK" to close the Internet Properties window.

7. **Verify the Proxy Configuration**:
   - Open your web browser and navigate to a website to ensure that the connection is routed through the Tor network.

### Instructions to Set Up SOCKS5 Proxy on Linux

1. **GNOME (e.g., Ubuntu)**:
   - Open the Settings application.
   - Go to the "Network" section.
   - Click on "Network Proxy".
   - Select "Manual" from the Method drop-down menu.
   - Under "Socks Host", enter the following details:
     - **Host**: `127.0.0.1`
     - **Port**: `5090`
   - Apply the settings.

2. **KDE (e.g., Kubuntu)**:
   - Open System Settings.
   - Go to the "Network" section and select "Proxy".
   - Set the proxy method to "Manual".
   - Enter the following details under "Socks Host":
     - **Host**: `127.0.0.1`
     - **Port**: `5090`
   - Apply the settings.

3. **Command Line (for all distributions)**:
   - You can set the proxy settings for specific applications using environment variables. For example:

     ```sh
     export ALL_PROXY=socks5://127.0.0.1:5090
     ```

   - To make this change persistent, add the above line to your `~/.bashrc` or `~/.bash_profile`.

4. **Verify the Proxy Configuration**:
   - Open your web browser or terminal and navigate to a website to ensure that the connection is routed through the Tor network.

## Display onion URL of hidden service 

```sh
docker exec -it tor-proxy cat /var/lib/tor/nginx/hostname
```

You will get something like:

> 3bskeihi3ohynad4ylc4qu6jsbjrmsy2tqzlyfneeuxx4qazqe5hm7id.onion

Copy/Paste the URL in your web browser - _connected to TOR, of course !!!_ - ...

... and you'll access to you **dark website** :jack_o_lantern:

## ✋ Tips

- **USE A VPN CONNECTION** before surfing on TOR circuits !
- The hidden service provides a very simple webpage but you can put whatever you want in `/usr/share/nginx/html/` folder, using `docker volumes` for eg...
- Tip XMR to **`42UwTUWzvPUCYKHsrzqGZXCKty3uCL9yGfeQSyy2oY2dRTLmsPFkgpsZgXvCvuV2BHbVDvsQNMyqD1udiKhRomhV4sk2gPE`**

##  Important Notice
We're proud to introduce our TOR proxy and onion site generator. 

This tool is designed to enhance privacy and security for users who wish to access the TOR network and create their own onion sites.

**Legal Use Only**: This tool is provided for legitimate, lawful purposes only. Users are responsible for ensuring that their use of this tool complies with all local, national, and international laws. Any use of this tool for illegal activities is strictly prohibited, and users doing so will be solely responsible for any legal consequences.

We believe in the power of privacy and the potential of the TOR network to protect user identities and promote free speech. However, it's essential to use these tools responsibly and ethically.

Please ensure you're familiar with the legal implications and responsibilities before using this tool.

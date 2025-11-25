# Install Passwall + Xray core for Openwrt on Xiaomi 4a Gigabit
# CURRENTLY WIP


## ✅ Recommended Openwrt Version : 22.03.5

[//]: # ( 22.03.5 > https://downloads.openwrt.org/releases/22.03.5/targets/)

* [Openwrt version 22.03.3 Recommended (Click for download)](https://archive.openwrt.org/releases/22.03.3/targets/ramips/mt7621/openwrt-22.03.3-ramips-mt7621-xiaomi_mi-router-4a-gigabit-squashfs-sysupgrade.bin)
* when you want to downgrade openwrt please Uncheck ( Keep setting ) for clear installation.

## Installation


### Run this command in openwrt remote ssh

```
rm -f install_passwallx.sh && wget https://raw.githubusercontent.com/M-K-S-P/mi4a_xray_ru/main/install_passwallx.sh && chmod 777 install_passwallx.sh && sh install_passwallx.sh
```

Done !

## How It Works

Basically, this script will install the xray core on ram each time you reboot your router.
This is mandatory because the xray core is too big to be installed on the router's flash memory.

## Types Support


### This Script can install one of the following cores:

| Protocol    | XRAY | SING-BOX |
|-------------|------|----------|
| VLESS       | ✅    | ✅        |
| VMESS       | ✅    | ✅        |
| REALITY     | ✅    | ✅        |
| TROJAN      | ✅    | ✅        |
| HYSTERIA2   | ❌    | ✅        |
| TUC         | ❌    | ✅        |
| SHADOWSOCKS | ✅    | ✅        |
| WIREGUARD   | ✅    | ✅        |
| SOCKS       | ✅    | ✅        |
| HTTP        | ✅    | ✅        |

## Features


⚡ Full Automatic installation Packages Just in one step

if provided with cmd argument will download ip and domain lists and reroute only those

## To Do

- [x] (Resolve Errors) I get some errors when installation, but it works fine
- [x] Error in extracting custom panel (iam.zip)
- [x] Rename `amir` and `amir2` to proper names
- [x] Update `direct_ip` and `direct_host` files


###
##### Feel free to contribute to this project by creating a pull request.

## Credits


This script is based on the work of
[https://github.com/amirhosseinchoghaei/Passwall](https://github.com/amirhosseinchoghaei/Passwall)
but it has lots of improvements and bug fixes and also merged multiple scripts from different repositories into one.

Same guy did the repo I forked this from, so uh, double kudos to him ig

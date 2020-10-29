[README](README.md) | [中文文檔](README_zh.md)

# Check your wireguard status And auto restart

## How to install?

download [wg-status.sh](https://raw.githubusercontent.com/steveyiyo/check-wireguard-status/master/wg-check.sh) to your linux system, and save it to /opt folder.

edit scripts's [edit it to your peer ip] to your peer server ip address.
```
wget --no-check-certificate -O /opt/wg-check.sh https://git.io/JJYlN
chmod 755 /opt/wg-check.sh
```

set crontab, every minute check it
```
crontab -e
* * * * * bash /opt/wg-check.sh
```

PS. You can get crontab config with [this website](https://crontab.guru/)

## How does this work?

It will check peer status with icmp ping And close wg and restart it.

## FAQ

Why i still can't ping?

1.Please allow icmp ping (41 port) in your peer server firewall!

2.check your wireguard private key and public key correct.

3.check your internet.

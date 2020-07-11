[README](README.md) | [中文文檔](README_zh.md)

# Check your wireguard status And auto restart

## How is work?

It will check peer status with icmp ping And close wg and restart it.

## FAQ

Why i still can't ping?

1.Please allow icmp ping (41 port) in your peer server firewall!

2.check your wireguard private key and public key correct.

3.check your internet.

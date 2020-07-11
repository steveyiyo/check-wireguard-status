<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@500&display=swap');
</style>

[README](README.md) | [中文文檔](README_zh.md)

# 自動檢查wireguard狀態並重啟

## 如何配置?

請將 [wg-status.sh](https://raw.githubusercontent.com/steveyiyo/check-wireguard-status/master/wg-check.sh) 下載到你的Linux系統，將他保存好(我都保存在 /opt 目錄下)
```
wget --no-check-certificate -O /opt/wg-check.sh https://git.io/JJYlN
chmod 755 /opt/wg-check.sh
```

配置crontab，每分鐘執行一次
```
crontab -e
* * * * * bash /opt/wg-status.sh
```

PS. 你可以在[這個網站上](https://crontab.guru/)產生crontab時間

## 這是如何運作的?

這是一個Shell Scripts腳本，他將會透過icmp ping去測試對等端是否通行
如果不通行，腳本將會重啟wireguard

## 問與答

我設定好了，但仍然無法ping通對等端

1.請檢查你的對等端防火牆是否允許icmp ping (41 port) 通行

2.請檢查你的wireguard配置私鑰及公鑰是否正確

3.請檢查你的網際網路狀態


<!-- 專案說明:
因為我的wireguard常常掛掉，只要重啟就恢復正常，所以我決定寫一個腳本來解決這個問題!
首先，先嘗試ping看看wireguard peer
如果沒有通，重啟wireguard
如果通了就不重啟
設定crontab自動執行scripts -->

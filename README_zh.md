# 自動檢查wireguard狀態並重啟

<!-- 專案說明:
因為我的wireguard常常掛掉，只要重啟就恢復正常，所以我決定寫一個腳本來解決這個問題!
首先，先嘗試ping看看wireguard peer
如果沒有通，重啟wireguard
如果通了就不重啟
設定crontab自動執行scripts -->

{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價小於開盤價(黑K)
// 顯示名稱: 收盤價 < 開盤價(黑K)
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("收盤價")<getField("開盤價")[0] then ret = 1;
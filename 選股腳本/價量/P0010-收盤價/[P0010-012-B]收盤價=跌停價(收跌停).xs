{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價=跌停價(收跌停)
// 顯示名稱: 收跌停
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("收盤價")=getField("跌停價")[0] then ret = 1;
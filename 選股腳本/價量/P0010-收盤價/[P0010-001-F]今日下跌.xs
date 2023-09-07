{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今日下跌
// 顯示名稱: 今日下跌
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("收盤價")<getField("參考價")[0] then ret = 1;
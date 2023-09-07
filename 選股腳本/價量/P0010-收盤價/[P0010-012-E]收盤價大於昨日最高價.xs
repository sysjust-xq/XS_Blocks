{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價大於昨日最高價
// 顯示名稱: 收盤價 > 昨日最高價
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("收盤價")>getField("最高價")[1] then ret = 1;
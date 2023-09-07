{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價小於昨日最低價
// 顯示名稱: 收盤價 < 昨日最低價
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("收盤價")<getField("最低價")[1] then ret = 1;
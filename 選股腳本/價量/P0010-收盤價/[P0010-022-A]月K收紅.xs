{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月K收紅
// 顯示名稱: 月K收紅
// 執行頻率: 月
// 
// 
SetTotalBar(2);
IF getField("收盤價")>getField("收盤價")[1] then ret = 1;
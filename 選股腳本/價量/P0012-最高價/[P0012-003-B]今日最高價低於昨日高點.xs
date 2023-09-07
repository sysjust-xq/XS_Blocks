{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今日最高價低於昨日高點
// 顯示名稱: 今日最高價低於昨日高點
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("最高價")<getField("最高價")[1] then ret = 1;
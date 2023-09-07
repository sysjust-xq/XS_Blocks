{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今日最低價低於昨日低點
// 顯示名稱: 今日最低價低於昨日低點
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("最低價")<getField("最低價")[1] then ret = 1;
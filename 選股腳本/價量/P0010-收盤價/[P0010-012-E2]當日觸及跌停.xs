{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 當日觸及跌停
// 顯示名稱: 當日觸及跌停
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("最低價")=getField("跌停價")[0] then ret = 1;
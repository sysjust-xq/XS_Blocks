{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價=漲停價(收漲停)
// 顯示名稱: 收漲停
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("收盤價")=getField("漲停價")[0] then ret = 1;
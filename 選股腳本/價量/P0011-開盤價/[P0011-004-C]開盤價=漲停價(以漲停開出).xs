{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 開盤價=漲停價(以漲停開出)
// 顯示名稱: 以漲停開出
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("開盤價")=getField("漲停價")[0] then ret = 1;
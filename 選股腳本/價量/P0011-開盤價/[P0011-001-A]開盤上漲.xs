{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 開盤上漲
// 顯示名稱: 開盤上漲
// 執行頻率: 日
// 
// 
SetTotalBar(2);
IF getField("開盤價")>getField("參考價")[0] then ret = 1;
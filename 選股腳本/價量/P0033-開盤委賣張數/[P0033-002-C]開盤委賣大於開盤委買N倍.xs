{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 開盤委賣大於開盤委買N倍
// 顯示名稱: 開盤委賣 > 開盤委買[3]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,6,7,10
// 
input:_p1(3);
SetTotalBar(2);
IF getField("開盤委賣") > getField("開盤委買")[0]* _p1 then ret = 1;
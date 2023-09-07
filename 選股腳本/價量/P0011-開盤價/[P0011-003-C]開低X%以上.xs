{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 開低X%以上
// 顯示名稱: 開低[3]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7
// 
input:_p1(3);
SetTotalBar(2);
IF getField("開盤價") < getField("參考價")[0]* (100-_p1) * 0.01 then ret = 1;
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現增價格小於收盤價N%以上
// 顯示名稱: 現增價格 < 收盤價[5]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.5,1,2,3,5,7,10,20,25,30
// 
input:_p1(5);
SetTotalBar(2);
IF getField("現增價格") < getField("收盤價")[0]* (100-_p1) * 0.01 then ret = 1;
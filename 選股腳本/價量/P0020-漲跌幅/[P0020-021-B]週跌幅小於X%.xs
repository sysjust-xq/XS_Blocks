{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 週跌幅小於X%
// 顯示名稱: 週跌幅 < [2]%
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 0,1,2,3,5,7,10,20,25,30
// 
input: _p1(2);
SetTotalBar(2);
value1 = RateOfChange(GetField("收盤價"),1);
value2 = -1*value1;
if value2 > 0 and value2 < _p1 then ret=1;
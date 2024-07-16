{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價自由現金流量比小於X
// 顯示名稱: 股價自由現金流量比 < [5]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("每股自由現金流量");
if Value1 < _p1 and Value1 > 0 then ret=1; 
OutputField(1, Value1, 2, "每股自由現金流量");
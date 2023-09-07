{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 週成交量小於等於X張
// 顯示名稱: 週成交量 <= [500]張
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 500,1000,2000,5000,10000
// 
input:_p1(500);
SetTotalBar(2); 
Value1 = GetField("Volume");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 0, "成交量");
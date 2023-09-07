{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日成交量加總小於等於X張
// 顯示名稱: [5]日成交量加總 <= [500]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 100,200,300,500,1000,2000,5000,10000,30000
// 
input:_p1(5);
input:_p2(500); 
SetTotalBar(2); 
Value1 = Summation(GetField("Volume"), _p1);
if Value1 < _p2 then ret=1; 
OutputField(1, Value1, 0, "成交量(加總)");
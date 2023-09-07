{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日平均成交值小於X億
// 顯示名稱: [5]日平均成交值 < [0.2]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 0.1,0.2,0.5,1,2,3,5,10
// 
input:_p1(5);
input:_p2(0.2); 
SetTotalBar(2); 
Value1 = Average(GetField("成交金額(億)"), _p1);
if Value1 < _p2 then ret=1; 
OutputField(1, Value1, 2, "成交值(平均)");
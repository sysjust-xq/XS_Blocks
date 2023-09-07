{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日當沖成交比小於X%
// 顯示名稱: 近[5]日當沖成交比 < [5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20,30,40,50,60
// _p2參數: 
// _p2數值: 5,10,20,30
// 
input:_p1(5); 
input: _p2(5);
SetTotalBar(2); 
Value1 = Summation(GetField("當日沖銷張數"), _p1);
Value2 = Summation(Volume, _p1);
if Value1 < Value2 * _p2 / 100 then ret=1; 
OutputField(1, Value1);
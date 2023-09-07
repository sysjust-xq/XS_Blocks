{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年營業毛利平均小於X億
// 顯示名稱: 近[3]年營業毛利平均 < [1]億
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: -50,-20,-10,-5,0,1,5,10,20
// 
input:_p1(3);
input:_p2(1); 
SetTotalBar(2); 
Value1 = Average(GetField("營業毛利"), _p1)*0.01;
if Value1 < _p2 then ret=1; 
OutputField(1, Value1);
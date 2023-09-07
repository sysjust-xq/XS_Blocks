{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季營業利益小於X億
// 顯示名稱: 單季營業利益 < [1]億
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: -50,-20,-10,-5,0,1,3,5,10,20
// 
input:_p1(1); 
SetTotalBar(2); 
Value1 = GetField("營業利益")*0.01;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
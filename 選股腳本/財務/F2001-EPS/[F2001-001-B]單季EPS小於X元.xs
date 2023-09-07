{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季EPS小於X元
// 顯示名稱: 單季EPS < [1]元
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0.2,0.3,0.5,0.7,0,1,2,3,4,5,6,8
// 
input:_p1(1); 
SetTotalBar(2); 
Value1 = GetField("EPS")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
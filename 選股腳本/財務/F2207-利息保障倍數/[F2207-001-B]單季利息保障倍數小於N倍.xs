{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季利息保障倍數小於N倍
// 顯示名稱: 單季利息保障倍數 < [5]倍
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30,50
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("利息保障倍數");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 2, "利息保障倍數");
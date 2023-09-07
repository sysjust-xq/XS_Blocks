{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營運現金流量小於X百萬
// 顯示名稱: 營運現金流量 < [1]百萬
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,50,100,200,500,1000
// 
input:_p1(1); 
SetTotalBar(2); 
Value1 = GetField("來自營運之現金流量")*0.01;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
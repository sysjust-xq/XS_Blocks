{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 成交值大於N日平均
// 顯示名稱: 成交值 > [5]日平均
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20,60,120,240
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("成交金額(億)");
Value2 = Average(GetField("成交金額(億)"), _p1);
if Value1 > Value2 then ret=1; 
OutputField(1, Value1, 2, "成交值");
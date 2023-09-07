{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自營商持股小於近N日平均
// 顯示名稱: 自營商持股 < 近[5]日平均
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("自營商持股");
Value2 = Average(GetField("自營商持股"), _p1);
if Value1 < Value2 then ret=1; 
OutputField(1, Value1, 0, "自營商");
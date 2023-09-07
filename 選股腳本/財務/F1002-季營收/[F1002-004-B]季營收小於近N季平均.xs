{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 季營收小於近N季平均
// 顯示名稱: 季營收 < 近[4]季平均
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input:_p1(4);
SetTotalBar(2); 
Value1 = GetField("營業收入淨額")*0.01;
Value2 = Average(GetField("營業收入淨額"), _p1)*0.01;
if Value1 < Value2 then ret=1; 
OutputField(1, Value1);
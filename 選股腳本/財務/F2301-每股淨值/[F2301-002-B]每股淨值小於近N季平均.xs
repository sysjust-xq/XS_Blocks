{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 每股淨值小於近N季平均
// 顯示名稱: 每股淨值 < 近[4]季平均
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input:_p1(4);
SetTotalBar(2); 
Value1 = GetField("每股淨值(元)")*1;
Value2 = Average(GetField("每股淨值(元)"), _p1)*1;
if Value1 < Value2 then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: Beta(貝他值)小於N日平均
// 顯示名稱: Beta(貝他值)小於[5]日平均
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("貝他值");
Value2 = Average(GetField("貝他值"), _p1);
if Value1 < Value2 then ret=1; 
OutputField(1, Value1, 2, "Beta");
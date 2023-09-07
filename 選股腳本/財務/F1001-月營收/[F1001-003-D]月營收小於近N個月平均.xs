{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收小於近N個月平均
// 顯示名稱: 月營收 < 近[3]個月平均
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,6,12
// 
input:_p1(3);
SetTotalBar(2); 
Value1 = GetField("月營收")*1;
Value2 = Average(GetField("月營收"), _p1)*1;
if Value1 < Value2 then ret=1; 
OutputField(1, Value1);
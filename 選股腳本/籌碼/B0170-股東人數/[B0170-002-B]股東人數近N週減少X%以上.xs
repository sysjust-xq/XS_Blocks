{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股東人數近N週減少X%以上
// 顯示名稱: 股東人數近[2]週減少[1]%以上
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,2,3,4
// _p2參數: 
// _p2數值: 1,2,3,5
// 
input:_p1(2);
input:_p2(1);
SetTotalBar(2); 
Value1 = GetField("總持股人數");
Value2 = GetField("總持股人數")[_p1];
Value3 = Value1 - Value2;
if Value2 <> 0 and Value3 < 0 and AbsValue(Value3) >= AbsValue(Value2) * 0.01 * _p2 then ret=1; 
OutputField(1, Value1);
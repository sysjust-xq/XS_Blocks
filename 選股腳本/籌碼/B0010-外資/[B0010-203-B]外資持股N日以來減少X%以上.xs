{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 外資持股N日以來減少X%以上
// 顯示名稱: 外資持股[10]日以來減少[5]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// _p2參數: 
// _p2數值: 1,2,3,5,10
// 
input:_p1(10);
input:_p2(5);
SetTotalBar(2); 
Value1 = GetField("外資持股");
Value2 = GetField("外資持股")[_p1];
Value3 = Value1 - Value2;
if Value2 <> 0 and Value3 < 0 and AbsValue(Value3) >= AbsValue(Value2) * 0.01 * _p2 then ret=1; 
OutputField(1, Value1);
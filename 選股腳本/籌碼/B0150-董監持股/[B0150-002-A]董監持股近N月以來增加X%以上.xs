{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 董監持股近N月以來增加X%以上
// 顯示名稱: 董監持股[3]個月以來增加[1]%以上
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,2,3,6,12
// _p2參數: 
// _p2數值: 0.1,0.2,0.5,1,2,5,10,15,20,30
// 
input:_p1(3);
input:_p2(1);
SetTotalBar(2); 
Value1 = GetField("董監持股");
Value2 = GetField("董監持股")[_p1];
Value3 = Value1 - Value2;
if Value2 <> 0 and Value3 >= AbsValue(Value2) * 0.01 * _p2 then ret=1; 
OutputField(1, Value1);
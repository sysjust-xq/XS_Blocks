{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 三大法人持股N日以來增加X%以上
// 顯示名稱: 三大法人持股[10]日以來增加[5]%以上
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
Value1 = GetField("法人持股");
Value2 = GetField("法人持股")[_p1];
Value3 = Value1 - Value2;
if Value2 <> 0 and Value3 >= AbsValue(Value2) * 0.01 * _p2 then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 內部人持股N個月以來增加X%以上
// 顯示名稱: 內部人持股[3]個月以來增加[1]%以上
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,2,3,6,12
// _p2參數: 
// _p2數值: 1,2,5,10,15,20
// 
input:_p1(3);
input:_p2(1);
SetTotalBar(2); 
Value1 = GetField("內部人持股比例");
Value2 = GetField("內部人持股比例")[_p1];
Value3 = Value1 - Value2;
if Value2 <> 0 and Value3 >= AbsValue(Value2) * 0.01 * _p2 then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融券使用率N日以來減少X%以上
// 顯示名稱: 融券使用率[10]日以來減少[2]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// _p2參數: 
// _p2數值: 1,2,3,5,10
// 
input:_p1(10);
input:_p2(2);
SetTotalBar(2); 
Value1 = GetField("融券使用率");
Value2 = GetField("融券使用率")[_p1];
Value3 = Value1 - Value2;
if Value3 <=  -_p2 then ret=1; 
OutputField(1, Value1);
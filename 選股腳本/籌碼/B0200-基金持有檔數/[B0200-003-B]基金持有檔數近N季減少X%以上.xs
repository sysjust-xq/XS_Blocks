{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 基金持有檔數近N季減少X%以上
// 顯示名稱: 基金持有檔數近[2]季減少[10]%以上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,2,3,4
// _p2參數: 
// _p2數值: 10,25,50,70,100
// 
input:_p1(2);
input:_p2(10);
SetTotalBar(2); 
Value1 = GetField("股票基金持有檔數");
Value2 = GetField("股票基金持有檔數")[_p1];
Value3 = Value1 - Value2;
if Value2 <> 0 and Value3 < 0 and AbsValue(Value3) >= AbsValue(Value2) * 0.01 * _p2 then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 基金持有檔數較上季增加N檔以上
// 顯示名稱: 基金持有檔數較上季增加[10]檔以上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 10,25,50,70,100
// 
input:_p1(10);
SetTotalBar(2); 
Value1 = GetField("股票基金持有檔數");
Value2 = GetField("股票基金持有檔數")[1];
Value3 = Value1 - Value2;
if Value2 <> 0 and Value3 >= _p1 then ret=1; 
OutputField(1, Value3);
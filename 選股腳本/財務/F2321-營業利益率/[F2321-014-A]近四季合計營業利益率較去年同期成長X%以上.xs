{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季合計營業利益率較去年同期成長X%以上
// 顯示名稱: 近四季合計營業利益率較去年同期[成長10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上]
// 
input:_p1(10); 
SetTotalBar(3);
value1 = Summation( getfield("營業利益"),4) / Average(Getfield("營業收入淨額"),4) *100; 
value2 = Summation( getfield("營業利益")[4],4) / Average(Getfield("營業收入淨額")[4],4) *100; 
if _p1 = 0 and value1 - value2 > 0 then ret=1;
if _p1 > 0 and value1 - value2 >= _p1 then ret=1;
if _p1 < 0 and value1 - value2 >= -1*_p1 and value1-value2 > 0 then ret=1;
OutputField1(Value1); 
OutputField2(Value2);
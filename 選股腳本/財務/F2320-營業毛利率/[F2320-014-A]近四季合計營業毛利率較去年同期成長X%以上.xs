{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季合計營業毛利率較去年同期成長X%以上
// 顯示名稱: 近四季合計營業毛利率較去年同期[成長10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],3=[成長3%以上],5=[成長5%以上],10=[成長10%以上],15=[成長15%以上]
// 
input:_p1(10); 
SetTotalBar(3);
value1 = Summation( getfield("營業毛利"),4) / Average(Getfield("營業收入淨額"),4) *100; 
value2 = Summation( getfield("營業毛利")[4],4) / Average(Getfield("營業收入淨額")[4],4) *100; 
if _p1 = 0 then begin
  if value1 - value2 > 0 then ret=1;
end else begin
  if value1 - value2 >= _p1 then ret=1;
end;
OutputField1(Value1); 
OutputField2(Value2);
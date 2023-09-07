{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季合計股東權益報酬率較上一季成長X%以上
// 顯示名稱: 近四季合計股東權益報酬率較上一季[成長5%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],1=[成長1%以上],3=[成長3%以上],5=[成長5%以上],10=[成長10%以上],15=[成長15%以上]
// 
input:_p1(5); 
SetTotalBar(3);
value1 = Summation( getfield("本期稅後淨利"),4) / Average(Getfield("股東權益總額"),4) *100; 
value2 = Summation( getfield("本期稅後淨利")[1],4) / Average(Getfield("股東權益總額")[1],4) *100; 
if _p1 = 0 then begin
  if value1 - value2 > 0 then ret=1;
end else begin
  if value1 - value2 >= _p1 then ret=1;
end;
OutputField1(Value1); 
OutputField2(Value1[1]);
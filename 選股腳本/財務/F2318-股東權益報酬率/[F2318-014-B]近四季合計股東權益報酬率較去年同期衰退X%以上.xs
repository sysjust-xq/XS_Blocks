{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季合計股東權益報酬率較去年同期衰退X%以上
// 顯示名稱: 近四季合計股東權益報酬率較去年同期[衰退5%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[衰退],1=[衰退1%以上],3=[衰退3%以上],5=[衰退5%以上],10=[衰退10%以上],15=[衰退15%以上]
// 
input:_p1(5); 
SetTotalBar(3);
value1 = Summation( getfield("本期稅後淨利"),4) / Average(Getfield("股東權益總額"),4) *100; 
value2 = Summation( getfield("本期稅後淨利")[4],4) / Average(Getfield("股東權益總額")[4],4) *100; 
if _p1 = 0 then begin
  if value1 - value2 < 0 then ret=1;
end else begin
  if value1 - value2 <= _p1*-1 then ret=1;
end;
OutputField1(Value1); 
OutputField2(Value1[1]);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度營收較去年衰退大於X%以上
// 顯示名稱: 年度營收較去年[衰退10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[衰退],10=[衰退10%以上],20=[衰退20%以上],30=[衰退30%以上],50=[衰退50%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("營業收入淨額") < GetField("營業收入淨額")[1] then ret=1;
end else begin
  if RateOfChange(GetField("營業收入淨額"), 1) <= -1*_p1 then ret=1;
end;
OutputField(1, GetField("營業收入淨額")*0.01);
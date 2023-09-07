{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季EPS較去年同期衰退N%以上
// 顯示名稱: 單季EPS較去年同期[衰退10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[衰退],10=[衰退10%以上],20=[衰退20%以上],30=[衰退30%以上],50=[衰退50%以上],-0.5=[衰退0.5元以上],-1=[衰退1元以上],-2=[衰退2元以上]
// 
{EPS較前4季衰退X%/X元}
input:_p1(10);    { 0=衰退, >0= 衰退_p1% <= 衰退(-p1)}
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("EPS") < GetField("EPS")[4] then ret=1;
end else if _p1 > 0 then begin
  if RateOfChange(GetField("EPS"), 4) <= -1*_p1 then ret=1;
end else begin
  if GetField("EPS")[4] - GetField("EPS") >= absvalue(_p1) then ret=1;
end;  

OutputField(1, GetField("EPS"), 2, "EPS");
OutputField(2, GetField("EPS")[4], 2, "EPS[4]");
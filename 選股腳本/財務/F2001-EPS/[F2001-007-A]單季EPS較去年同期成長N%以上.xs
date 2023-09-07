{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季EPS較去年同期成長N%以上
// 顯示名稱: 單季EPS較去年同期[成長10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上],-0.5=[成長0.5元以上],-1=[成長1元以上],-2=[成長2元以上]
// 
{EPS較前4季成長X%/X元}
input:_p1(10);    { 0=成長, >0= 成長_p1% <= 成長(-p1)}
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("EPS") > GetField("EPS")[4] then ret=1;
end else if _p1 > 0 then begin
  if RateOfChange(GetField("EPS"), 4) >= _p1 then ret=1;
end else begin
  if GetField("EPS") - GetField("EPS")[4] >= absvalue(_p1) then ret=1;
end;  

OutputField(1, GetField("EPS"), 2, "EPS");
OutputField(2, GetField("EPS")[4], 2, "EPS[1]");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度EPS成長X%以上
// 顯示名稱: 年度EPS[成長10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[成長],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上],-1=[成長1元以上],-2=[成長2元以上],-3=[成長3元以上]
// 
{EPS較前期成長X%/X元}
input:_p1(10);    { 0=成長, >0= 成長_p1% <= 成長(-p1)}
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("EPS") > GetField("EPS")[1] then ret=1;
end else if _p1 > 0 then begin
  if RateOfChange(GetField("EPS"), 1) >= _p1 then ret=1;
end else begin
  if GetField("EPS") - GetField("EPS")[1] >= absvalue(_p1) then ret=1;
end;  

OutputField(1, GetField("EPS"), 2, "EPS");
OutputField(2, GetField("EPS")[1], 2, "EPS[1]");
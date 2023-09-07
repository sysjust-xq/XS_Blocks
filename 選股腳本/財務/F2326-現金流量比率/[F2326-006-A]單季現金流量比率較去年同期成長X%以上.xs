{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季現金流量比率較去年同期成長X%以上
// 顯示名稱: 單季現金流量比率較去年同期[成長10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],5=[成長5%以上],10=[成長10%以上],15=[成長15%以上],20=[成長20%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("現金流量比率") > GetField("現金流量比率")[4] then ret=1;
end else begin
  if (GetField("現金流量比率") - GetField("現金流量比率")[4])*1 >= _p1 then ret=1;
end;
OutputField(1, GetField("現金流量比率")*1);
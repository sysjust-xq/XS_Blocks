{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季營業費用率較去年同期減少X%以上
// 顯示名稱: 單季營業費用率較去年同期[減少5%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[減少],5=[減少5%以上],10=[減少10%以上],15=[減少15%以上],20=[減少20%以上]
// 
input:_p1(5); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("營業費用率") < GetField("營業費用率")[4] then ret=1;
end else begin
  if (GetField("營業費用率") - GetField("營業費用率")[4])*1 <= -_p1 then ret=1;
end;
OutputField(1, GetField("營業費用率")*1);
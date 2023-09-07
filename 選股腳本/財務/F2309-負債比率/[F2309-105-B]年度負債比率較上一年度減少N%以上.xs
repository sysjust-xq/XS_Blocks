{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度負債比率較上一年度減少N%以上
// 顯示名稱: 年度負債比率較上一年度[減少10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[減少],5=[減少5%以上],10=[減少10%以上],15=[減少15%以上],20=[減少20%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("負債比率") < GetField("負債比率")[1] then ret=1;
end else begin
  if (GetField("負債比率") - GetField("負債比率")[1])*1 < -1*_p1 then ret=1;
end;
OutputField(1, GetField("負債比率")*1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 稅後淨利率較上一季衰退X%以上
// 顯示名稱: 稅後淨利率較上一季[衰退5%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[衰退],3=[衰退3%以上],5=[衰退5%以上],10=[衰退10%以上],15=[衰退15%以上]
// 
input:_p1(5); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("稅後淨利率") < GetField("稅後淨利率")[1] then ret=1;
end else begin
  if (GetField("稅後淨利率") - GetField("稅後淨利率")[1])*1 < -1*_p1 then ret=1;
end;
OutputField(1, GetField("稅後淨利率")*1);
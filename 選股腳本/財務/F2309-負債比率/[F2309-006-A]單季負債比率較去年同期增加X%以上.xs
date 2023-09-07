{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季負債比率較去年同期增加X%以上
// 顯示名稱: 單季負債比率較去年同期[增加5%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[增加],5=[增加5%以上],10=[增加10%以上],15=[增加15%以上],20=[增加20%以上]
// 
input:_p1(5); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("負債比率") > GetField("負債比率")[4] then ret=1;
end else begin
  if (GetField("負債比率") - GetField("負債比率")[4])*1 >= _p1 then ret=1;
end;
OutputField(1, GetField("負債比率")*1);
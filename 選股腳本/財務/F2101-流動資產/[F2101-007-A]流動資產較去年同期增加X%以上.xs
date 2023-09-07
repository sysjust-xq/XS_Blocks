{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 流動資產較去年同期增加X%以上
// 顯示名稱: 流動資產較去年同期[增加10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[增加],10=[增加10%以上],20=[增加20%以上],30=[增加30%以上],50=[增加50%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("流動資產") > GetField("流動資產")[4] then ret=1;
end else begin
  if RateOfChange(GetField("流動資產"), 4) >= _p1 then ret=1;
end;
OutputField(1, GetField("流動資產")*0.01);
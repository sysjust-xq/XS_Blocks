{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度流動比率較上一年度增加X%以上
// 顯示名稱: 年度流動比率較上一年度[增加10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[增加],10=[增加10%以上],20=[增加20%以上],30=[增加30%以上],50=[增加50%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("流動比率") > GetField("流動比率")[1] then ret=1;
end else begin
  if (GetField("流動比率") - GetField("流動比率")[1])*1 >= _p1 then ret=1;
end;
OutputField(1, GetField("流動比率")*1);
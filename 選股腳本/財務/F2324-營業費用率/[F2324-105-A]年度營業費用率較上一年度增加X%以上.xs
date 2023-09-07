{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度營業費用率較上一年度增加X%以上
// 顯示名稱: 年度營業費用率較上一年度[增加10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[增加],5=[增加5%以上],10=[增加10%以上],15=[增加15%以上],20=[增加20%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("營業費用率") > GetField("營業費用率")[1] then ret=1;
end else begin
  if (GetField("營業費用率") - GetField("營業費用率")[1])*1 >= _p1 then ret=1;
end;
OutputField(1, GetField("營業費用率")*1);
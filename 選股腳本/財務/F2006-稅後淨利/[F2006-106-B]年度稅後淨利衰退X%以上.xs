{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度稅後淨利衰退X%以上
// 顯示名稱: 年度稅後淨利[衰退10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[衰退],3=[衰退3%以上],5=[衰退5%以上],10=[衰退10%以上],20=[衰退20%以上],30=[衰退30%以上],50=[衰退50%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("本期稅後淨利") < GetField("本期稅後淨利")[1] then ret=1;
end else begin
  if RateOfChange(GetField("本期稅後淨利"), 1) <= -1*_p1 then ret=1;
end;
OutputField(1, GetField("本期稅後淨利")*0.01);
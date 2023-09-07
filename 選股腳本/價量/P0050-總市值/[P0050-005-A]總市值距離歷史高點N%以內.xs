{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 總市值距離歷史高點N%以內
// 顯示名稱: 總市值距離歷史高點[3]%以內
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7,10
// 
input: _p1(3); 
SetTotalBar(2);
Value1 = GetField("總市值(億)");
value2 = GetFieldStartOffset("總市值(億)");
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  value3 = SimpleHighest(GetField("總市值(億)")[1], value2);       
  if value1 > value3*(1-(_p1/100)) and value1 < value3 then ret=1;
end;
OutputField(1, Value1);
OutputField(2, Value3);
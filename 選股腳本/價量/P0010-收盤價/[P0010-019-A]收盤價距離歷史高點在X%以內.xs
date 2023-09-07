{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價距離歷史高點在X%以內
// 顯示名稱: 收盤價距離歷史高點在[3]%以內
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,15,20,25,30,35,40
// 
input: _p1(3); 
SetTotalBar(2);
Value1 = GetField("收盤價");
value2 = GetFieldStartOffset("最高價");
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  value3 = SimpleHighest(GetField("最高價")[1], value2);       
  if value1 > value3*(1-(_p1/100)) and value1 < value3 then ret=1;
end;
OutputField(1, Value1);
OutputField(2, Value3);
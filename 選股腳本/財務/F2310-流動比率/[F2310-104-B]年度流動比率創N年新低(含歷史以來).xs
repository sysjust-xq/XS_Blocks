{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度流動比率創N年新低(含歷史以來)
// 顯示名稱: 年度流動比率創[3年]新低
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3=[3年],5=[5年],10=[10年],-1=[歷史以來]
// 
input: _p1(3); 
SetTotalBar(2);
Value1 = GetField("流動比率")*1;
if _p1 <= 0 then value2 = GetFieldStartOffset("流動比率") else value2 = _p1-1;
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  value3 = SimpleLowest(GetField("流動比率")[1], value2)*1;       
  if value1 < value3 then ret=1;
end;
OutputField(1, Value1);
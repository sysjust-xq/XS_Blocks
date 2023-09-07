{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 負債總額創N季新低(含歷史以來)
// 顯示名稱: 負債總額創[4季]新低
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4=[4季],8=[8季],12=[12季],16=[16季],-1=[歷史以來]
// 
input: _p1(4); 
SetTotalBar(2);
Value1 = GetField("負債總額")*0.01;
if _p1 <= 0 then value2 = GetFieldStartOffset("負債總額") else value2 = _p1-1;
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  value3 = SimpleLowest(GetField("負債總額")[1], value2)*0.01;       
  if value1 < value3 then ret=1;
end;
OutputField(1, Value1);
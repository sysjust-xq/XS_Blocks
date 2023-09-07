{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季現金流量比率創N季新高(含歷史以來)
// 顯示名稱: 單季現金流量比率創[4季]新高
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4=[4季],8=[8季],12=[12季],16=[16季],-1=[歷史以來]
// 
input: _p1(4); 
SetTotalBar(2);
Value1 = GetField("現金流量比率")*1;
if _p1 <= 0 then value2 = GetFieldStartOffset("現金流量比率") else value2 = _p1-1;
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  value3 = SimpleHighest(GetField("現金流量比率")[1], value2)*1;       
  if value1 > value3 then ret=1;
end;
OutputField(1, Value1);
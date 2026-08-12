{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 負債對淨值比率創N季新高(含歷史以來)
// 顯示名稱: 負債對淨值比率創[4季]新高
// 執行頻率: 季
// 
// _p1參數: N 季 (-1 = 歷史以來)
// _p1數值: 4=[4季],8=[8季],12=[12季],-1=[歷史以來]
// 
input: _p1(4);
SetTotalBar(20);

// 當季 D/E
Value1 = 0;
if GetField("股東權益總額") <> 0 then
    Value1 = GetField("負債總額") / GetField("股東權益總額") * 100;

// 過去 N 季最高 D/E (從 1 季前開始，不含當季)
value97 = -999999;
For value99 = 1 to _p1
begin
    if GetField("股東權益總額")[value99] <> 0 then begin
        value98 = GetField("負債總額")[value99] / GetField("股東權益總額")[value99] * 100;
        if value98 > value97 then value97 = value98;
    end;
end;

If Value1 > value97 and Value1 > 0 then ret = 1;

OutputField(1, Value1, 2, "當季D/E(%)");
OutputField(2, value97, 2, "過去N季最高D/E(%)");
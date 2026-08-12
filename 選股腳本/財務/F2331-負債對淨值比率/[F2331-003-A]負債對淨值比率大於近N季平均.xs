{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 負債對淨值比率大於近N季平均
// 顯示名稱: 負債對淨值比率 > 近[4]季平均
// 執行頻率: 季
// 
// _p1參數: 季數
// _p1數值: 4,8,12
// 
input: _p1(4);
SetTotalBar(13);

// 當季 D/E
Value1 = 0;
if GetField("股東權益總額") <> 0 then
    Value1 = GetField("負債總額") / GetField("股東權益總額") * 100;

// 近 N 季平均 D/E (含當季)
value98 = 0;
For value99 = 0 to _p1 - 1
begin
    if GetField("股東權益總額")[value99] <> 0 then
        value98 = value98 + GetField("負債總額")[value99] / GetField("股東權益總額")[value99] * 100;
end;
Value2 = value98 / _p1;

If Value1 > Value2 then ret = 1;

OutputField(1, Value1, 2, "當季D/E(%)");
OutputField(2, Value2, 2, "近N季平均D/E(%)");
OutputField(3, Value1 - Value2, 2, "差異(%)");
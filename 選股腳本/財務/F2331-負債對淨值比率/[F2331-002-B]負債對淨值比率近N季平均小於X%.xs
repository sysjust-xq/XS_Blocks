{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 負債對淨值比率近N季平均小於X%
// 顯示名稱: 負債對淨值比率近[4]季平均 < [150]%
// 執行頻率: 季
// 
// _p1參數: 季數
// _p1數值: 4,8,12
// _p2參數: 上限百分比 (近 N 季平均 D/E)
// _p2數值: 50,100,150,200,300,500
// 
input: _p1(4);
input: _p2(150);
SetTotalBar(13);

value98 = 0;
For value99 = 0 to _p1 - 1
begin
    if GetField("股東權益總額")[value99] <> 0 then
        value98 = value98 + GetField("負債總額")[value99] / GetField("股東權益總額")[value99] * 100;
end;
Value1 = value98 / _p1;

If Value1 < _p2 then ret = 1;

// 輸出多個欄位，方便手動驗算
OutputField(1, Value1, 2, "近N季平均D/E(%)");
OutputField(2, GetField("負債總額"), 2, "當季負債總額");
OutputField(3, GetField("股東權益總額"), 2, "當季股東權益總額");
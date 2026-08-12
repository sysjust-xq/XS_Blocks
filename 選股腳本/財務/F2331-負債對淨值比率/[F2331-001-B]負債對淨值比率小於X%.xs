{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 負債對淨值比率小於X%
// 顯示名稱: 負債對淨值比率 < [150]%
// 執行頻率: 季
// 
// _p1參數: 上限百分比 (負債/淨值，< 算財務穩健)
// _p1數值: 50,100,150,200,300,500
// 
input:_p1(150);
SetTotalBar(3);
If GetField("股東權益總額") <> 0 then begin
    Value1 = GetField("負債總額") / GetField("股東權益總額") * 100;
    Value2 = GetField("負債總額");
    Value3 = GetField("股東權益總額");
    If Value1 < _p1 then ret = 1;
end;
// 輸出多個欄位，方便手動驗算（OutputField 第 4 參數是中文欄位名）
OutputField(1, Value1, 2, "負債對淨值比率(%)");
OutputField(2, Value2, 2, "負債總額");
OutputField(3, Value3, 2, "股東權益總額");
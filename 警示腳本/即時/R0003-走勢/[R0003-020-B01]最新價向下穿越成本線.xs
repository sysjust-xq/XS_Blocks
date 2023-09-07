{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 最新價向下穿越成本線
// 顯示名稱: 最新價向下穿越當日均價線
// 執行頻率: 1分(非逐筆洗價)
// 
// 
Var: _p1(1);
SetTotalBar(2);
value1 = GetField("均價", "1")[0];
value2 = -1 * (GetField("收盤價", "1") - value1 * _p1);
if BarFreq = "D" then begin
        if CurrentTime < 090100 or CurrentTime > 240000 then return;
end else begin
        if Time < 090100 or Time > 240000 then return;
end;
IF value2 > 0 and value2 * value2[1] < 0 then ret = 1;
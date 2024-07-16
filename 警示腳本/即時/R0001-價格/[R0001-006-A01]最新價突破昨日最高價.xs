{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 最新價突破昨日最高價
// 顯示名稱: 最新價突破昨日最高價
// 執行頻率: 1分(非逐筆洗價)
// 
// 
Var: _p1(1);
SetTotalBar(2);
value1 = GetField("最高價", "AD")[1];
value2 = 1 * (GetField("收盤價", "AD") - value1 * _p1);
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 240000 then return;
end else begin
        if Time < 000000 or Time > 240000 then return;
end;
IF value2 > 0 and value2 * value2[1] < 0 then ret = 1;
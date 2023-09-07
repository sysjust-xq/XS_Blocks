{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近長紅後的長黑
// 顯示名稱: 近長紅後的長黑
// 執行頻率: 1分(非逐筆洗價)
// 
// 
Var: _p1(7);
SetBackBar(3, "D");
settotalBar(3);
if BarFreq = "D" then begin
        if CurrentTime < 131500 then return;
end else begin
        if Time < 131500 then return;
end;
value1 = 100*(GetField("收盤價", "D")[0] - GetField("開盤價", "D")[0])/GetField("開盤價", "D")[0];
if -1 * value1 <= 0 then return;
value2 = 100*(GetField("收盤價", "D")[1] - GetField("開盤價", "D")[1])/GetField("開盤價", "D")[1];
if -1 * value2 >= 0 then return;
if value1 * value2 < - _p1 * _p1 then ret = 1;
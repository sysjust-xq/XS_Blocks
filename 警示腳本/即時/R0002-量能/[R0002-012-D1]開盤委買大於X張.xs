{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開盤委買大於X張
// 顯示名稱: 開盤委買 >= [100]張
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 
// _p1數值: 100,200,300,500,1000,2000,5000,10000,30000
// 
Input: _p1(100);
SetBackBar(0+ 10, "D");
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 240000 then return;
end else begin
        if Time < 000000 or Time > 240000 then return;
end;
IF 1 * (GetField("開盤委買", "D")[0] - _p1) > 0 then ret = 1;
{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 最新價短均線向上穿越長均線
// 顯示名稱: 最新價[5]日均線向上穿越[10]日均線
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日的短均線期數
// _p1數值: 5,10,20,60,120,240
// _p2參數: 日的常均線期數
// _p2數值: 5,10,20,60,120,240
// 
Input: _p1(5);
Input: _p2(10);
SetBackBar(MaxList(_p1,_p2) + 10, "AD");
SetTotalBar(1);
if _p1 >= _p2 then return;
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 240000 then return;
end else begin
        if Time < 000000 or Time > 240000 then return;
end;
value1 = Average(GetField("收盤價", "AD")[0],_p1);
value2 = Average(GetField("收盤價", "AD")[0],_p2);
value3 = 1 * (value1 - value2);
IF value3 > 0 and value3 * xf_GetValue("AD",value3,1) < 0 then ret = 1;
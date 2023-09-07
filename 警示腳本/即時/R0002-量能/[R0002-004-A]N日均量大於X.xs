{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: N日均量大於X
// 顯示名稱: [5]日均量 >= [500]張
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日的均量期數
// _p1數值: 5,10,20,60,100,120,240
// _p2參數: 
// _p2數值: 100,200,500,1000,2000,5000,10000
// 
Input: _p1(5);
Input: _p2(500);
SetBackBar(_p1 + 10, "D");
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 240000 then return;
end else begin
        if Time < 000000 or Time > 240000 then return;
end;
IF 1 * (Average(GetField("成交量", "D")[0],_p1) - _p2) > 0 then ret = 1;
{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 分時漲跌成交量大於X張
// 顯示名稱: 分鐘上漲成交量大於[500]張
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 張數的下限值
// _p1數值: 0,500,1000,1500
// 
Input: _p1(500);
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < 000000 then return;
end else begin
        if Time < 000000 then return;
end;
IF 1 * (DiffUpDownVolume[0] - _p1) > 0 then ret = 1;
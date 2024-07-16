{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開低X%以上
// 顯示名稱: 開低[3]%以上
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 開低的下限值
// _p1數值: 1,2,3,5,7
// 
Input: _p1(3);
SetBackBar(0+10, "D");
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 090100 then return;
end else begin
        if Time < 000000 or Time > 090100 then return;
end;
value1 = GetField("參考價", "D")[0];
if value1 <> 0 then
        value2 = 100 * -1 * (GetField("開盤價", "D")/absvalue(value1) - sign(value1))
else
        value2 = 0;
if value2 > _p1 then ret = 1;
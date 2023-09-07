{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 下跌超過X%
// 顯示名稱: 下跌[2]%以上
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 跌幅的上限值
// _p1數值: 1,2,3,5,7,8,9,9.5
// 
Input: _p1(2);
SetBackBar(0+10, "D");
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 240000 then return;
end else begin
        if Time < 000000 or Time > 240000 then return;
end;
value1 = GetField("參考價", "D")[0];
if value1 <> 0 then
        value2 = 100 * -1 * (GetField("收盤價", "D")/absvalue(value1) - sign(value1))
else
        value2 = 0;
if value2 > _p1 then ret = 1;
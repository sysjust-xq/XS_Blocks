{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 當日大盤漲幅大於等於X%
// 顯示名稱: 當日大盤漲幅 >= [2]%
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 漲幅的下限數值%
// _p1數值: 1,2,3
// 
Var: Length(1);//計算期間
Input: _p1(2);//觸發標準
SetTotalBar(10);
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 240000 then return;
end else begin
        if Time < 000000 or Time > 240000 then return;
end;
value1 = GetField("收盤價")[Length];
if value1 <> 0 then
        value2 = 100 * 1 * (GetField("收盤價")/absvalue(value1) - sign(value1))
else
        value2 = 0;
if value2 > _p1 then ret = 1;
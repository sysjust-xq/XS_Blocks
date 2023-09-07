{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 急拉
// 顯示名稱: 急拉超過[1]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 急拉幅度的下限值
// _p1數值: 1,2,3
// 
Var: _v1(1);//計算期間
Input: _p1(1);//觸發標準
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < 090100 or CurrentTime > 240000 then return;
end else begin
        if Time < 090100 or Time > 240000 then return;
end;
value1 = GetField("收盤價")[_v1];
if value1 <> 0 then
        value2 = 100 * 1 * (GetField("收盤價")/absvalue(value1) - sign(value1))
else
        value2 = 0;
if value2 > _p1 then ret = 1;
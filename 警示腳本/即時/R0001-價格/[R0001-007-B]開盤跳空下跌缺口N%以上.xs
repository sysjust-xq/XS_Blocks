{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開盤跳空下跌缺口N%以上
// 顯示名稱: 開盤跳空下跌缺口[1]%以上
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 下跌跳空缺口的下限值
// _p1數值: 1,2,3,5,7
// 
Input: _p1(1);
SetBackBar(1+10, "AD");
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 090200 then return;
end else begin
        if Time < 000000 or Time > 090200 then return;
end;
value1 = GetField("最低價", "AD")[1];
if value1 <> 0 then
        value2 = 100 * -1 * (GetField("開盤價", "AD")/absvalue(value1) - sign(value1))
else
        value2 = 0;
if value2 > _p1 then ret = 1;
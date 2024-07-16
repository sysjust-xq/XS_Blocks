{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 成交量較前N日衰減大於M%以上
// 顯示名稱: 成交量較前[20]日[衰減10]%以上
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 前幾日的期數
// _p1數值: 5,10,20
// _p2參數: 成長幅度的上限值
// _p2數值: 0=[衰減],10=[衰減10],20=[衰減20]
// 
Input: _p1(20);//計算期間
Input: _p2(10);//觸發標準
SetTotalBar(_p1+10);
if BarFreq = "D" then begin
        if CurrentTime < 000000 or CurrentTime > 240000 then return;
end else begin
        if Time < 000000 or Time > 240000 then return;
end;
value1 = GetField("成交量")[_p1];
if value1 <> 0 then
        value2 = 100 * -1 * (GetField("成交量")/absvalue(value1) - sign(value1))
else
        value2 = 0;
if value2 > _p2 then ret = 1;
{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤N日均量突破N日均量
// 顯示名稱: 大盤[5]日均量突破[20]日均量
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的短均量期數
// _p1數值: 5,10,20,60,120,240
// _p2參數: 日的長均量期數
// _p2數值: 5,10,20,60,120,240
// 
input: _p1(5);
input: _p2(20);
SetTotalBar(2);
setbarBack(maxList(_p1,_p2)+0+10);
if _p1 >= _p2 then return;
if BarFreq = "D" then begin
        if CurrentTime < 0 then return;
end else begin
        if Time < 0 then return;
end;
value1 = Average(GetField("成交量")[0],_p1);
value2 = Average(GetField("成交量")[0],_p2);
value3 = 1 * (value1 - value2);
IF value3 > 0 and value3 * value3[1] < 0 then ret = 1;
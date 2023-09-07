{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤上漲下跌家數差的N日RSI指標偏多
// 顯示名稱: 大盤上漲下跌家數差的[6]日RSI指標偏多
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的RSI期數
// _p1數值: 3,6,12
// 
input:_p1(6);//,"RSI計算天數"
var:_Side(1);
settotalbar(maxlist(_p1,6) * 8 + 8);
value3=GetField("上漲家數")-getfield("下跌家數");
value4=summation(value3,_p1);
value5=rsi(value4,_p1);
if _Side = 1 and value5 > 0 then
        ret = 1
else if _Side = 1 and value5 < 0 then
        ret = 1;
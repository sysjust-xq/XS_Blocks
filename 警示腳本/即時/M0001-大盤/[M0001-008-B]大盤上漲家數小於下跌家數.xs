{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤上漲家數小於下跌家數
// 顯示名稱: 大盤上漲家數 < 下跌家數
// 執行頻率: 日(逐筆洗價)
// 
// 上漲家數＝漲停家數+上漲家數
// 下跌家數 = 跌停家數+下跌家數
// 
Var:_p1(1);//,"計算天數"
var:_Side(-1);
settotalBar(12);
value4=summation((GetField("上漲家數")+GetField("漲停家數"))-(getfield("下跌家數")+getfield("跌停家數")),_p1);
value5=average(value4,5);
if _Side = 1 and value5>0 then 
        ret=1
else if _Side = -1 and value5<0 then 
        ret=1;
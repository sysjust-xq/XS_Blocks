{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤上漲家數佔比大於N%
// 顯示名稱: 大盤上漲家數佔比 > [50] %
// 執行頻率: 日(逐筆洗價)
// 
// 上漲家數＝漲停家數+上漲家數
// _p1參數: 佔比的下限值
// _p1數值: 50,60,70
// 
Var:_Length(1);//期別
Input:_p1(50);
var:_Side(1);//1=多方；-1=空方
settotalBar(10);
value3=getfield("上漲家數")+GetField("漲停家數")+getfield("下跌家數")+GetField("跌停家數");
if value3 = 0 then value4 = 0 else value4=(getfield("上漲家數")+GetField("漲停家數"))/value3*100;
value5= average(value4,_Length);
if _Side = 1 and value5>_p1 then ret = 1
else if _Side = -1 and value5<_p1 then ret = 1;
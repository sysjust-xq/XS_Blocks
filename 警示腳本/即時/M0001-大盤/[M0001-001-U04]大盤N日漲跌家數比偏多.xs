{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤N日漲跌家數比偏多
// 顯示名稱: 大盤[5]日漲跌家數比偏多
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 5,10
// 
input:_p1(5);
Var:_Side(1);
setbackbar(_p1+10);
settotalBar(2);
value1=GetField("上漲家數");
value2=GetField("下跌家數");
value3=GetField("漲停家數");
value4=GetField("跌停家數");
value5=value1+value3*2-(value2+value4*2);
value6=average(value5,_p1);
if _Side = 1 and value6 > 0 then ret=1
else if _Side = -1 and value6 < 0 then ret=1;
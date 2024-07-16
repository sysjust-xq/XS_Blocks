{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數N日均線位於X日均線之下
// 顯示名稱: 櫃買指數[5]日均線位於[20]日均線之下
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的短均線期數
// _p1數值: 5,10,20,60,120,240
// _p2參數: 日的長均線期數
// _p2數值: 5,10,20,60,120,240
// 
Input: _p1(5); 
Input: _p2(20); 
var:_Side(-1); 
SetTotalBar(2); 
setbarBack(maxList(_p1,_p2)+0+10);
value1 = average(GetField("收盤價")[0],_p1); 
value2 = average(GetField("收盤價")[0],_p2); 
if _Side = 1 and value1 > value2 then ret = 1
else if _Side = -1 and value1 < value2 then ret = 1;
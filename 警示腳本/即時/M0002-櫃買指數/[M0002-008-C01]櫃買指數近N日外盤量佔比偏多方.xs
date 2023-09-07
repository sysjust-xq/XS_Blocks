{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數近N日外盤量佔比偏多方
// 顯示名稱: 櫃買指數近[5]日外盤量佔比偏多方
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 5,10
// 
input:_p1(5);//,"計算區間"
Var:_Side(1);
setbackBar(_p1+0+10);
settotalBar(2);
value3=summation(getField("內盤量")[0],_p1);//區間內盤量合計
value4=summation(getField("外盤量")[0],_p1);//區間外盤量合計
value5=value3+value4;//區間內外盤量合計
if value5<>0 then 
value6=value4/value5*100;
if _Side = 1 and value6 > 45 then ret = 1
else if _Side = -1 and value6 < 45 then ret = 1;
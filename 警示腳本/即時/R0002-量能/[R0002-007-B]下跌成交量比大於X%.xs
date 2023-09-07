{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 下跌成交量比大於X%
// 顯示名稱: 下跌成交量比大於[50]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 比率的下限值
// _p1數值: 50,60,70,80
// 
input: _p1(50);
SetTotalBar(0);
value1 = GetField("上漲量", "D");
value2 = GetField("下跌量", "D");        
value3 = GetField("成交量", "D");
if value3 = 0 then return;
value4 = 100 * value2 / value3;
if value4 >= _p1 then ret=1;
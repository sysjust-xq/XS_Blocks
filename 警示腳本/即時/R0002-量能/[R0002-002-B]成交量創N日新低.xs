{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 成交量創N日新低
// 顯示名稱: 成交量創[5]日新低
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 5,10,20,60,120,240
// 
Input: _p1(5);
Var: _p2(1);
SetBackBar(_p1, "D");
SetTotalBar(1);
if Time < 000000 or Time > 240000 then return;
value1 = SimpleLowest(GetField("成交量", "D")[1],_p1);
IF -1 * (GetField("成交量", "D") - value1 * _p2) > 0 then ret = 1;
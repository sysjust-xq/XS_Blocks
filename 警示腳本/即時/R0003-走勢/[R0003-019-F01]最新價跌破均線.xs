{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 最新價跌破均線
// 顯示名稱: 最新價向下跌破[20]日均線
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日的均線期數
// _p1數值: 5,10,20,60,120,240
// 
Input: _p1(20);
Var: _p2(1);
SetBackBar(_p1 + 10, "AD");
SetTotalBar(1);
if Time < 000000 or Time > 240000 then return;
value1 = Average(GetField("收盤價", "AD")[0],_p1);
value2 = -1 * (GetField("收盤價", "AD") - value1 * _p2);
IF value2 > 0 and value2 * xf_GetValue("AD",value2,1) < 0 then ret = 1;
{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數站在N日均線之上
// 顯示名稱: 櫃買指數站在[20]日均線之上
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日均線的期數
// _p1數值: 5,10,20,60,120,240
// 
Input: _p1(20);
Var: _p2(1);
SetBackBar(_p1, "D");
SetTotalBar(1);
if Time < 000000 or Time > 240000 then return;
value1 = Average(GetField("收盤價", "D")[0],_p1);
IF 1 * (GetField("收盤價", "D") - value1 * _p2) > 0 then ret = 1;
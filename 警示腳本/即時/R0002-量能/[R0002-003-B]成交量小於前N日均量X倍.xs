{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 成交量小於前N日均量X倍
// 顯示名稱: 成交量 < 前[5]日均量的[1/2]
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 日的均量期數
// _p1數值: 1,5,10,20
// _p2參數: 倍數
// _p2數值: 1=[1倍],0.5=[1/2],0.33=[1/3],0.2=[1/5]
// 
Input: _p1(5);
Input: _p2(0.5);
SetBackBar(_p1, "D");
SetTotalBar(1);
if Time < 000000 or Time > 240000 then return;
value1 = Average(GetField("成交量", "D")[1],_p1);
IF -1 * (GetField("成交量", "D") - value1 * _p2) > 0 then ret = 1;
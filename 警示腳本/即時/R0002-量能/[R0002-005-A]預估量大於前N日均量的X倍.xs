{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 預估量大於前N日均量的X倍
// 顯示名稱: 預估量大於前[5]日均量的[2]倍
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 前幾日的期數
// _p1數值: 1,5,10,20
// _p2參數: 倍數
// _p2數值: 1,2,3,5
// 
Input: _p1(5);
Input: _p2(2);
SetBackBar(_p1, "D");
SetTotalBar(1);
if Time < 103000 or Time > 240000 then return;
value1 = Average(GetField("成交量", "D")[1],_p1);
IF 1 * (GetField("估計量", "D") - value1 * _p2) > 0 then ret = 1;
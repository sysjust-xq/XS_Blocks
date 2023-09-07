{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大戶流出
// 顯示名稱: 當日大單賣出金額大於[前三日]平均值的[2]倍
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 前N日
// _p1數值: 3=[前三日],5=[前五日]
// _p2參數: 倍數
// _p2數值: 1,2,3,5
// 
Input: _p1(3);
Input: _p2(2);
SetBackBar(_p1, "D");
SetTotalBar(1);
if Time < 100000 or Time > 240000 then return;
value1 = Average(GetField("賣出大單金額", "D")[1],_p1);
IF 1 * (GetField("賣出大單金額", "D") - value1 * _p2) > 0 then ret = 1;
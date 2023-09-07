{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N日股價區間幅度小於X%
// 顯示名稱: 近[20]日波動區間 < [5]%
// 執行頻率: 1分(非逐筆洗價)
// 
// 近N日波動區間，指的是 Highest(High, N) 與 Lowest(Low, n) 的波動幅度。
// _p1參數: 日的期數
// _p1數值: 5,10,20,60
// _p2參數: 波動區間幅度的上限值
// _p2數值: 3,5,7,10
// 
Input: _p1(20);//箱形計算期間
Input: _p2(5);//箱區高低範圍%
Var: _Side(-1);//區間內=1、區間外=-1
setbackbar(_p1+2,"D");
settotalBar(_p1+3);
value1 = highest(Getfield("收盤價","D"),_p1);
value2 = lowest(Getfield("收盤價","D"),_p1);
value3 = (value1 - value2) * 100 / average(GetField("參考價", "D"),_p1);//20期振幅，若振幅為2.5%，則回傳2.5。
if _Side = 1 and value3 > _p2 then ret = 1
else if _Side = -1 and value3 < _p2 then ret = 1;
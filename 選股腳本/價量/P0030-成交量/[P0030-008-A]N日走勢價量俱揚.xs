{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日走勢價量俱揚
// 顯示名稱: [5]日走勢價量俱揚
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input: _p1(5);
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
Condition1 = UpTrend(GetField("收盤價"), days);
Condition2 = UpTrend(GetField("成交量"), days);
ret = Condition1 and Condition2;
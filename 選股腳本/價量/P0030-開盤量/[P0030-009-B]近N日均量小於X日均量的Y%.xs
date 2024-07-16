{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日均量小於X日均量的Y%
// 顯示名稱: 近[5]日均量 < [10]日均量的[1/2]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 3,5,7,10,20,60,120,240
// _p3參數: 
// _p3數值: 1.2=[1.2倍],1=[1倍],0.5=[1/2],0.33=[1/3],0.2=[1/5]
// 
input: _p1(5);
input: _p2(10);
input: _p3(0.5);
var: days1(0);
var: days2(0);
SetBarFreq("AD");
SetTotalBar(5000);
if _p1 = _p2 then return;
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days1 = _p1 else days1 = GetBarOffsetForYears(-1*_p1);
if days1 <= 0 then return;// 不足日期的股票不選
if _p2 > 0 then days2 = _p2 else days2 = GetBarOffsetForYears(-1*_p2);
if days2 <= 0 then return;// 不足日期的股票不選
value1 = Average(GetField("成交量"), days1);
value2 = Average(GetField("成交量")[0], days2) * _p3;
value3 = value1 - value2;
value4 = -1*value3;
if value4 > 0 then ret=1;
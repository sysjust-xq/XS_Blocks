{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 超過N日未再破底
// 顯示名稱: 收盤價超過[10]日未再破底
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input: _p1(10);//正值表天數、負值表年數
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
value1 = SimpleLowestBar(GetField("最低價"),days);
if value1 = days-1 then ret=1;
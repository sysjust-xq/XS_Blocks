{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 成交量小於前N日高點的X日均量的Y倍
// 顯示名稱: 成交量 < 前[10]日高點的[5]日均量的[1/2]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 5,10,20
// _p3參數: 
// _p3數值: 0=[1倍],-50=[1/2],-67=[1/3],-80=[1/5]
// 
input:_p1(10);//正值表天數、負值表年數
input:_p2(5);
input:_p3(-50);
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
value1 = SimpleHighestBar(GetField("最高價")[1],days-1)+1;//+1是因為欄位[1]，所以加回
value2 = Average(GetField("成交量")[value1], _p2);
value3 = GetField("成交量") - value2*(100+_p3)*0.01;
value4 = -1*value3;
if value4 > 0 then ret=1;
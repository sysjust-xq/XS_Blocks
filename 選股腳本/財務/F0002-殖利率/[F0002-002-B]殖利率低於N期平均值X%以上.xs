{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 殖利率低於N期平均值X%以上
// 顯示名稱: 殖利率低於[1年]平均值[1]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 60=[60日],120=[120日],-1=[1年],-3=[3年],-5=[5年],-10=[10年]
// _p2參數: 
// _p2數值: 0,0.5,1,1.5,2,3
// 
input: _p1(-1);
input:_p2(1);
SetBarFreq("D");
SetTotalBar(10*250);        
if CurrentBar < GetTotalBar then return;
var: days(0);
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days = 0 then return;  // 不足日期的股票不選
value1 = GetField("殖利率");
value2 = Average(GetField("殖利率"),days);
value3 = value1 - value2;
if _p2 = 0 and value3 < 0 then ret=1;
if _p2 <> 0 and value3 <= -1*_p2 and GetField("殖利率") <> 0 then ret=1;

Outputfield(1, value1, 3, "殖利率");
Outputfield(2, value2, 3, "平均值");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年平均殖利率大於X%
// 顯示名稱: 近[3年]平均[殖利率] > [3]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: -3=[3年],-5=[5年],-10=[10年]
// _p2參數: 
// _p2數值: 0=[殖利率],1=[現金殖利率],2=[股票殖利率]
// _p3參數: 
// _p3數值: 1,2,3,5,7,10
// 
input:_p1(-3);
input:_p2(0);
input:_p3(3);
SetBarFreq("D");
SetTotalBar(10*250);    
if _p2 = 0 then value11 = GetField("殖利率");
if _p2 = 1 then value11 = GetField("現金股利殖利率");
if _p2 = 2 then value11 = GetField("股票股利殖利率");
if CurrentBar < GetTotalBar then return;
var: days(0);
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days = 0 then return;  // 不足日期的股票不選
value2 = Average(value11,days);
If value2 >_p3  and GetField("殖利率") <> 0 then ret = 1;
Outputfield(1, value11, 3, "殖利率");
Outputfield(2, value2, 3, "平均值");
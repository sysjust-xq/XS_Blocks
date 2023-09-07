{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年來總市值低點發生至今小於X天
// 顯示名稱: 近[1年]來總市值低點發生至今 < [20]天
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: -1=[1年],-2=[2年],-3=[3年],-5=[5年]
// _p2參數: 
// _p2數值: 5,10,20,50,100,150
// 
input:_p1(-1);//正值表天數、負值表年數
input:_p2(20);
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
value1 = SimplelowestBar(GetField("總市值(億)")[1],days-1)+1;//+1是因為欄位[1]，所以加回
value2 = GetField("總市值(億)")[value1];
value3 = value2*(100-_p2)*0.01;
If value1 <_p2 then  ret = 1;
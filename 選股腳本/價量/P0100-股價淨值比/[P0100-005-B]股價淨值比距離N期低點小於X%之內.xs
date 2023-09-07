{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價淨值比距離N期低點小於X%之內
// 顯示名稱: 股價淨值比距離[1年]低點小於[1]%之內
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 60=[60日],80=[80日],90=[90日],100=[100日],120=[120日],240=[240日],-1=[1年],-2=[2年],-3=[3年],-4=[4年],-5=[5年]
// _p2參數: 
// _p2數值: 1,2,3,5
// 
input:_p1(-1);//正值表天數、負值表年數
input:_p2(1);
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
value1 = SimpleLowestBar(GetField("股價淨值比")[1],days-1)+1;//+1是因為欄位[1]，所以加回
value2 = GetField("股價淨值比")[value1];
value3 = value2*(100+_p2)*0.01;
if GetField("股價淨值比") < value3 and GetField("股價淨值比") > value2 then ret=1;
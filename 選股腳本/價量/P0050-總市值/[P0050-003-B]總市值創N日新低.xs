{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 總市值創N日新低
// 顯示名稱: 總市值創[240日]新低
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 60=[60日],80=[80日],90=[90日],100=[100日],120=[120日],240=[240日],-1=[1年],-2=[2年],-3=[3年],-4=[4年],-5=[5年]
// 
input: _p1(240);//正值表天數、負值表年數
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
value1 = SimpleLowest(GetField("總市值(元)")[1],days-1);
if GetField("總市值(元)") < value1 then ret=1;
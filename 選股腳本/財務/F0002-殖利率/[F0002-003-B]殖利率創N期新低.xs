{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 殖利率創N期新低
// 顯示名稱: 殖利率創[1年]新低
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 60=[60日],120=[120日],-1=[1年],-3=[3年],-5=[5年],-10=[10年]
// 
input: _p1(-1);//正值表天數、負值表年數
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
value1 = SimpleLowest(GetField("殖利率")[1],days-1);
if GetField("殖利率") < value1  and GetField("殖利率") <> 0 then ret=1;
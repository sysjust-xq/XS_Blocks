{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N期高低差平均小於X
// 顯示名稱: 近[5日]高低差平均 < [3]元
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3=[3日],5=[5日],7=[7日],10=[10日],20=[20日],30=[30日],40=[40日],50=[50日],60=[60日],80=[80日],90=[90日],100=[100日],120=[120日],240=[240日],-1=[1年],-2=[2年],-3=[3年],-4=[4年],-5=[5年]
// _p2參數: 
// _p2數值: 3,5,7,10,15,20,50
// 
input: _p1(5);//正值表天數、負值表年數
input: _p2(3);//高低差數值
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
value1 = average(GetField("高低差"),days);
if value1 < _p2 then ret=1;
OutputField1(value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 即將進行除權息(N日之內)
// 顯示名稱: 即將進行[除權息]([3]日之內)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0=[除權息],1=[除權],2=[除息]
// _p2參數: 
// _p2數值: 1,2,3,5,10,14
// 
input: _p1(0);
input: _p2(3);
settotalBar(_p2+5);
if _p1 = 0 then value1 = GetField("除權息日期");
if _p1 = 1 then value1 = GetField("除權日期");
if _p1 = 2 then value1 = GetField("除息日期");
if value1 > 0 then 
Value2 = DateDiff(value1,Date) else 
Value2 = -1; 
if Value2 <= _p2 and Value2 >= 0 then ret =1;
OutputField(1, value1);
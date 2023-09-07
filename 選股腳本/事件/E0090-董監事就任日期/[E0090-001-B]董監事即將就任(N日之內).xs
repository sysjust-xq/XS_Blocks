{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 董監事即將就任(N日之內)
// 顯示名稱: 董監事即將就任([3]日之內)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,14
// 
input:_p1(3);
SetTotalBar(3); 
if GetField("董監事就任日期") > 0 then 
Value1 = DateDiff(GetField("董監事就任日期"),Date) else 
Value1 = -1; 
if Value1 <= _p1 and Value1 >= 0 then ret =1; 
OutputField1(GetField("董監事就任日期"));
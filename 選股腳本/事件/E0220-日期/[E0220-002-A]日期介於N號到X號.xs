{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 日期介於N號到X號
// 顯示名稱: 日期介於[1]號~[10]號
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,15,20,25
// _p2參數: 
// _p2數值: 10,15,20,25,30,31
// 
input: _p1(1);
input: _p2(10);
settotalBar(3);
If _p1 < 0  or _p1>31 or _p1>_p2 then return;
If DayOfMonth(Date)>=_p1 and DayOfMonth(Date)<=_p2 then ret =1;
OutputField1(DayOfMonth(Date));
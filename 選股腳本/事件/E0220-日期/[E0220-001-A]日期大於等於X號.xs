{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 日期大於等於X號
// 顯示名稱: 日期 >= [10]號
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,15,20,25,30,31
// 
input: _p1(10);
settotalBar(3);
If _p1 < 0  or _p1>31 then return;
If DayOfMonth(Date)>=_p1 then ret =1;
OutputField1(DayOfMonth(Date));
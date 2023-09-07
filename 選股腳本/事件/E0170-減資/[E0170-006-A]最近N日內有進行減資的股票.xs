{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最近N日內有進行減資的股票
// 顯示名稱: 最近[20]日內有進行減資的股票
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,20,50,60,80,100
// 
settotalBar(2);
input:_p1(20);
If  DateDiff(date,GetField("減資新股上市日")) <= _p1 and GetField("減資新股上市日") <> 0  and date > GetField("減資新股上市日") then ret = 1;
outputField1(GetField("減資新股上市日"),"減資新股上市日");
outputField2(DateDiff(date,GetField("減資新股上市日")),"減資新股上市日相差天數");
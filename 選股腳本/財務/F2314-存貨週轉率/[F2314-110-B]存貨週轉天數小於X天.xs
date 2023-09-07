{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 存貨週轉天數小於X天
// 顯示名稱: 存貨週轉天數 < [100]天
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 50,100,200,300,500
// 
input:_p1(100);
SetTotalBar(3);
If GetField("存貨週轉率(次)") <> 0 then 
value1 = (365/GetField("存貨週轉率(次)"));
If value1 < _p1 then ret = 1;
outputField1(value1);
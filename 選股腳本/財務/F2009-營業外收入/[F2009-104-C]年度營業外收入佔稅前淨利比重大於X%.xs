{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度營業外收入佔稅前淨利比重大於X%
// 顯示名稱: 年度營業外收入佔稅前淨利比重 > [10]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 10,20,30,50
// 
input:_p1(10);
SetTotalBar(3);
value1 = GetField("營業外收入及支出");
value2 = GetField("稅前淨利");
value3 = 100 * value1 / value2;
if value2 > 0 and value3 >= _p1 then ret=1;  
outputField(1, value3, 2, "比例%");
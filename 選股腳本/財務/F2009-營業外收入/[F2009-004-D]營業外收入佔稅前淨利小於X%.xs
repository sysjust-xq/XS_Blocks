{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營業外收入佔稅前淨利小於X%
// 顯示名稱: 營業外收入佔稅前淨利比重 < [1]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,3,5,10,20
// 
input:_p1(1);
SetTotalBar(3);
value1 = GetField("營業外收入及支出");
value2 = GetField("稅前淨利");
value3 = 100 * value1 / value2;
if value2 > 0 and value3 < _p1 then ret=1;  
outputField(1, value3, 2, "比例%");
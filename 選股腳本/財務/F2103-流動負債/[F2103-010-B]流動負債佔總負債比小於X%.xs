{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 流動負債佔總負債比小於X%
// 顯示名稱: 流動負債佔總負債比 < [20]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 20,40,60
// 
input:_p1(20);
SetTotalBar(2);
value1= getField("流動負債");
value2 = getField("負債總額");
value3 = 100 * value1 / value2;
if value3 < _p1 then ret=1;
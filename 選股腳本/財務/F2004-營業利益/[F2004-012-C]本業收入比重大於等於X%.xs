{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 本業收入比重大於等於X%
// 顯示名稱: 本業收入比重 >= [80]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 50,80,100,120,150
// 
input:_p1(80);
SetTotalBar(2);
value1= getField("營業利益");
value2 = getField("稅前淨利");
value3 = 100 * value1 / value2;
if value3 >= _p1 then ret=1;
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 流動資產-流動負債小於X億元
// 顯示名稱: 流動資產 - 流動負債 < [5]億元
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,5,10,20,50
// 
input:_p1(5);
SetTotalBar(1);
value1 = (getField("流動資產")-getField("流動負債"))*0.01;
IF value1 < _p1 then ret = 1;
outputField(1,value1 ,"流動資產減負債");
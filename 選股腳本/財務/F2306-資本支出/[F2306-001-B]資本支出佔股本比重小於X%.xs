{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 資本支出佔股本比重小於X%
// 顯示名稱: 資本支出佔股本比重 < [50]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 10,20,40,50,60
// 
input:_p1(50);
SetTotalBar(2);
value1 = summation(getField("資本支出金額","Q"),4)/GetField("股本(億)","D");
If value1 < _p1 then ret = 1;
outputField(1,value1);
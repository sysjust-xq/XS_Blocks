{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營運資金佔股本比重小於X%
// 顯示名稱: 營運資金佔股本比重 < [0.5]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,0.05,0.25,0.5,0.75,1
// 
input:_p1(0.5);
SetTotalBar(2);
value1 = getField("營運資金")/GetField("股本(億)","D");
If value1 < _p1 then ret = 1;
outputField(1,value1);
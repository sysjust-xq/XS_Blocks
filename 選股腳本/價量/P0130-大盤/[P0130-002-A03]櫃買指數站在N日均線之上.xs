{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 櫃買指數站在N日均線之上
// 顯示名稱: 櫃買指數站在[20]日均線之上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60,120,240
// 
input: _p1(20);
SetTotalBar(_p1+2);
SetBarFreq("D");
var:_side(1);
value1 = GetSymbolField("OTC.tw","Close");
value2 = average(GetSymbolField("OTC.tw","Close"),_p1);
if value1 > value2 and _side = 1 then ret=1;
if value1 < value2 and _side = -1 then ret=1;
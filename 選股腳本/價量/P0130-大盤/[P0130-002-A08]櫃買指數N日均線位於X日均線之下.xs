{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 櫃買指數N日均線位於X日均線之下
// 顯示名稱: 櫃買指數[5]日均線位於[20]日均線之下
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60,120,240
// _p2參數: 
// _p2數值: 5,10,20,60,120,240
// 
input: _p1(5),_p2(20);
SetTotalBar(1);
SetBarFreq("D");
var:_side(-1);
If _p1 > _p2 then Return;
value1 = average(GetSymbolField("OTC.tw","Close"),_p1);
value2 = average(GetSymbolField("OTC.tw","Close"),_p2);
if value1 > value2 and _side = 1 then ret=1;
if value1 < value2 and _side = -1 then ret=1;
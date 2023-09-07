{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 大盤N日均線站在X日均線之上
// 顯示名稱: 大盤[5]日均線站在[20]日均線之上
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
var:_side(1);
If _p1 > _p2 then Return;
value1 = average(GetSymbolField("tse.tw","Close"),_p1);
value2 = average(GetSymbolField("tse.tw","Close"),_p2);
if value1 > value2 and _side = 1 then ret=1;
if value1 < value2 and _side = -1 then ret=1;
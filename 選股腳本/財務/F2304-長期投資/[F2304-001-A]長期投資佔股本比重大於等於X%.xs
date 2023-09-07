{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 長期投資佔股本比重大於等於X%
// 顯示名稱: 長期投資佔股本比重 >= [10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 10,20,30,50,70
// 
input:_p1(10);
SetTotalBar(2);
value1 = getField("長期投資","Q")/GetField("股本(億)","D");
If value1 >= _p1 then ret = 1;
outputField(1,value1);
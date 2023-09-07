{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 流動負債-流動資產佔股本比大於等於X%
// 顯示名稱: 流動負債 - 流動資產佔股本比 >= [30]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 30,50,100,150,200,500
// 
input:_p1(30);
SetTotalBar(2);
value1 = ((getField("流動負債","Q")-getField("流動資產","Q")))/GetField("股本(億)","D");
If value1 >= _p1 then ret = 1;
outputField(1,value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股本介於N到X億
// 顯示名稱: 股本介於[10]~[20]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,50,100
// _p2參數: 
// _p2數值: 5,10,20,50,100
// 
input:_p1(10), _p2(20); 
SetTotalBar(2); 
Value1 = GetField("股本(億)");
if value1 >= minlist(_p1,_p2) and value1 < maxlist(_p1,_p2) then ret=1; 
OutputField(1, Value1, 2, "股本(億)");
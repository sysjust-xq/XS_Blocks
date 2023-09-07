{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股本大於等於X億
// 顯示名稱: 股本 >= [5]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,15,20,30,50,70,100,120,150,200,300
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("股本(億)");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 2, "股本(億)");
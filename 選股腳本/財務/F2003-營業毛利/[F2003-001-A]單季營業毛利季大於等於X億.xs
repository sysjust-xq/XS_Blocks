{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季營業毛利季大於等於X億
// 顯示名稱: 單季營業毛利 >= [10]億
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,5,7,10,15,20,25,50,100
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("營業毛利")*0.01;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);
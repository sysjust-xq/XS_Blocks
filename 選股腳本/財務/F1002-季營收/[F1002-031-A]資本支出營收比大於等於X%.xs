{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 資本支出營收比大於等於X%
// 顯示名稱: 資本支出營收比 >= [5]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,3,5,10,20,30,50
// 
input:_p1(5); 
SetTotalBar(2); 
Value1 = GetField("資本支出營收比")*0.01;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營業費用率大於等於X%
// 顯示名稱: 營業費用率 >= [20]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 10,20,30,40,50
// 
input:_p1(20); 
SetTotalBar(2); 
Value1 = GetField("營業費用率")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);
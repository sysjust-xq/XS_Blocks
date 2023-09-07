{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現金再投資比率大於X
// 顯示名稱: 現金再投資比率 >= [10]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0,10,20,30
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("現金再投資％")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);
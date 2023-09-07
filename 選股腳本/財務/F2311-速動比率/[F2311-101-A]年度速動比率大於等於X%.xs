{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度速動比率大於等於X%
// 顯示名稱: 年度速動比率 >= [100]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 50,100,150,200
// 
input:_p1(100); 
SetTotalBar(2); 
Value1 = GetField("速動比率")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);
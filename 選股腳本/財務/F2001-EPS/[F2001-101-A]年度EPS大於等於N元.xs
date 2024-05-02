{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度EPS大於等於N元
// 顯示名稱: 年度EPS >= [1]元
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0.5,0,1,1.5,2,2.5,3,5,7,10
// 
input:_p1(1); 
SetTotalBar(2); 
Value1 = GetField("EPS")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);
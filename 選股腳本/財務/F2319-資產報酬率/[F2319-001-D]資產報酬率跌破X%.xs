{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 資產報酬率跌破X%
// 顯示名稱: 資產報酬率跌破[10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,3,5,10,15,20
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("資產報酬率")*1;
Value2 = GetField("資產報酬率")[1]*1;
if Value2 > _p1 and Value1 < _p1 then ret=1; 
OutputField(1, Value1);
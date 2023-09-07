{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融券使用率小於X%
// 顯示名稱: 融券使用率 < [5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("融券使用率");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
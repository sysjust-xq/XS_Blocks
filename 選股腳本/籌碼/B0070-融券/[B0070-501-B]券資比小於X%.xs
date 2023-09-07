{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 券資比小於X%
// 顯示名稱: 券資比 < [5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,30
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("券資比");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
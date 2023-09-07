{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 減資比例小於X%
// 顯示名稱: 減資比例 < [10]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,30,50
// 
input:_p1(10);
SetTotalBar(2); 
Value1 = GetField("減資比例");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 0, "減資");
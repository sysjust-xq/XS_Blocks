{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 投信持股比例小於X%
// 顯示名稱: 投信持股比例 < [1]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,1,1.5,2,2.5,3,5,10,15
// 
input:_p1(1);
SetTotalBar(2); 
Value1 = GetField("投信持股比例");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
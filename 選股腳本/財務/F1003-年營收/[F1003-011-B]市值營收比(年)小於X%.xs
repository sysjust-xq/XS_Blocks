{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 市值營收比(年)小於X%
// 顯示名稱: 市值營收比(年) < [5]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 1,3,5,10,20,30,50,100
// 
input:_p1(5); 
SetTotalBar(2); 
Value1 = GetField("市值營收比");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
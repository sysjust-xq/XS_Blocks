{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 佔大盤成交量比小於X%
// 顯示名稱: 佔大盤成交量比小於[0.5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.05,0.1,0.2,0.5,1
// 
input:_p1(0.5);
SetTotalBar(2); 
Value1 = GetField("佔大盤成交量比");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 2, "成交值");
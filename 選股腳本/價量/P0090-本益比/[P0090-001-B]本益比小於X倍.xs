{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 本益比小於X倍
// 顯示名稱: 本益比 <= [10]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,6,7,8,9,10,11,12,13,14,15,20,30,40
// 
input:_p1(10);
SetTotalBar(2); 
Value1 = GetField("本益比");
if Value1 < _p1 and Value1 > 0 then ret=1; 
OutputField(1, Value1, 2, "本益比");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 外銷比率小於X
// 顯示名稱: 外銷比率 < [10]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 10,20,30
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("外銷比率")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
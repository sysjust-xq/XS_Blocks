{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 研發費用率小於X%
// 顯示名稱: 研發費用率 < [1]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 1,3,5,10,15
// 
input:_p1(1); 
SetTotalBar(2); 
Value1 = GetField("研發費用率")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
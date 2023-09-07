{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股東權益報酬率小於X%
// 顯示名稱: 股東權益報酬率 < [10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,1,3,5,7,10,15,20,25
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("股東權益報酬率")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
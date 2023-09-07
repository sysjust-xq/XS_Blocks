{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營業毛利率小於X%
// 顯示名稱: 營業毛利率 < [20]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,5,10,20,30,40,50
// 
input:_p1(20); 
SetTotalBar(2); 
Value1 = GetField("營業毛利率")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
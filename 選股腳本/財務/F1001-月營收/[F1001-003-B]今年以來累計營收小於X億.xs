{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今年以來累計營收小於X億
// 顯示名稱: 今年以來累計營收 < [1]億
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,3,5,10,20,50,100,200,500,1000
// 
input:_p1(1); 
SetTotalBar(2); 
Value1 = GetField("累計營收")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
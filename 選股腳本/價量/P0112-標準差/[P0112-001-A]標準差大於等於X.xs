{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 標準差大於等於X
// 顯示名稱: 標準差 >= [0.5]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.5,0.7,1,2,3
// 
input:_p1(0.5);
SetTotalBar(2); 
Value1 = GetField("標準差");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 2, "標準差");
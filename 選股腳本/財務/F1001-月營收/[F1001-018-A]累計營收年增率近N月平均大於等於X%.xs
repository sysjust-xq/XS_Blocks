{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 累計營收年增率近N月平均大於等於X%
// 顯示名稱: 累計營收年增率近[3]月平均 >= [10]%
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,3,6,9,12
// _p2參數: 
// _p2數值: 0,10,20,30,50,100
// 
input:_p1(3);
input:_p2(10); 
SetTotalBar(2); 
Value1 = Average(GetField("累計營收年增率"), _p1)*1;
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收近N月合計大於X億
// 顯示名稱: 月營收近[3]月合計 >= [10]億
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 1,3,5,10,20,50,100,200,500,1000
// 
input:_p1(3);
input:_p2(10); 
SetTotalBar(2); 
Value1 = Summation(GetField("月營收"), _p1)*1;
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1);
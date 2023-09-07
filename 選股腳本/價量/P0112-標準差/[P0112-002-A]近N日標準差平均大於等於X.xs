{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日標準差平均大於等於X
// 顯示名稱: 近[5]日標準差平均 >= [0.5]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,9,10,15,20
// _p2參數: 
// _p2數值: 0.5,0.7,1,2,3
// 
input:_p1(5);
input:_p2(0.5); 
SetTotalBar(2); 
Value1 = Average(GetField("標準差"), _p1);
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1, 2, "標準差(平均)");
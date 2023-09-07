{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 速動比率近N季平均小於X%
// 顯示名稱: 速動比率近[4]季平均 < [50]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 50,100,150,200
// 
input:_p1(4);
input:_p2(50); 
SetTotalBar(2); 
Value1 = Average(GetField("速動比率"), _p1)*1;
if Value1 < _p2 then ret=1; 
OutputField(1, Value1);
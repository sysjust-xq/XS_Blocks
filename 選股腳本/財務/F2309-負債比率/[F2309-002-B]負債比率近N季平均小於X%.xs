{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 負債比率近N季平均小於X%
// 顯示名稱: 負債比率近[4]季平均 < [30]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 10,20,30,50,60,70
// 
input:_p1(4);
input:_p2(30); 
SetTotalBar(2); 
Value1 = Average(GetField("負債比率"), _p1)*1;
if Value1 < _p2 then ret=1; 
OutputField(1, Value1);
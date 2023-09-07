{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度流動比率小於X%
// 顯示名稱: 年度流動比率 < [50]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 50,100,150,200
// 
input:_p1(50); 
SetTotalBar(2); 
Value1 = GetField("流動比率")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
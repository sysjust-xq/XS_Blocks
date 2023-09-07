{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度營業利益率小於X%
// 顯示名稱: 年度營業利益率 < [20]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0,5,10,15,20,30
// 
input:_p1(20); 
SetTotalBar(2); 
Value1 = GetField("營業利益率")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
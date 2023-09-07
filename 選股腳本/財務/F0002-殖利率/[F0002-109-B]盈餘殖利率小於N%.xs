{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 盈餘殖利率小於N%
// 顯示名稱: 盈餘殖利率 < [5]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 2,3,5,10,20,30
// 
input:_p1(5); 
SetTotalBar(2); 
Value1 = GetField("盈餘殖利率")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
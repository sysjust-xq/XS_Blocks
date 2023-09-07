{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 盈餘殖利率大於N%
// 顯示名稱: 盈餘殖利率 > [5]%
// 執行頻率: 年
// 
// 計算公式: 稅前淨利/(總市值+負債總額)
// _p1參數: 
// _p1數值: 2,3,5,10,20,30
// 
input:_p1(5); 
SetTotalBar(2); 
Value1 = GetField("盈餘殖利率")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);
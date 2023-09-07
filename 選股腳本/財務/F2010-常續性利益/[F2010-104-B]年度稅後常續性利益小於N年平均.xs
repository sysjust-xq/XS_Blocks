{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度稅後常續性利益小於N年平均
// 顯示名稱: 年度稅後常續性利益 < [3]年平均
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// 
input:_p1(3);
SetTotalBar(2); 
Value1 = GetField("常續性利益(稅後)")*0.01;
Value2 = Average(GetField("常續性利益(稅後)"), _p1)*0.01;
if Value1 < Value2 then ret=1; 
OutputField(1, Value1);
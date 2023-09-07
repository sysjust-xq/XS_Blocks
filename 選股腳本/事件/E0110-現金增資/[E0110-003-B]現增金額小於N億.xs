{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現增金額小於N億
// 顯示名稱: 現增金額 < [3]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.5,1,2,3,5
// 
input:_p1(3);
SetTotalBar(2); 
Value1 = GetField("現增金額");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 0, "現金增資");
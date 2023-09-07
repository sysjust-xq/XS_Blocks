{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 成交值小於等於X億
// 顯示名稱: 成交金額 <= [1]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.1,0.2,0.5,1,2,3,5,10
// 
input:_p1(1);
SetTotalBar(2); 
Value1 = GetField("成交金額(億)");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 2, "成交值");
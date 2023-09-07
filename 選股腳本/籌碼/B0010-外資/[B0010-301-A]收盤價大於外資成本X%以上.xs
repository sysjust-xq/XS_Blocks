{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價大於外資成本X%以上
// 顯示名稱: 收盤價 > 外資成本[5]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("外資成本");
if Close > Value1 * (1 + 0.01*_p1) then ret=1;
OutputField(1, Value1);
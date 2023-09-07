{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價即將突破投信成本(差距在N%之內)
// 顯示名稱: 收盤價即將突破投信成本(差距在[1]%之內)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10
// 
input:_p1(1);
SetTotalBar(2); 
Value1 = GetField("投信成本");
if Close < Value1 and Close > Value1 * (1 - 0.01*_p1) then ret=1;
OutputField(1, Value1);
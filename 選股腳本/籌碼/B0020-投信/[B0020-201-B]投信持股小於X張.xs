{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 投信持股小於X張
// 顯示名稱: 投信持股 < [5000]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 2000,5000,10000,50000,100000
// 
input:_p1(5000);
SetTotalBar(2); 
Value1 = GetField("投信買賣超");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
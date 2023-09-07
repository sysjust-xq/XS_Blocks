{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 比大盤波動小(Beta小於X)
// 顯示名稱: 比大盤波動小(Beta < [0.95])
// 執行頻率: 日
// 
// 比大盤波動小的股票
// _p1參數: 
// _p1數值: 0.8,0.85,0.9,0.95,0,1
// 
input:_p1(0.95);
SetTotalBar(2); 
Value1 = GetField("貝他值");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 2, "Beta");
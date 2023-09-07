{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 比大盤波動大(Beta大於等於N)
// 顯示名稱: 比大盤波動大(Beta >= [1])
// 執行頻率: 日
// 
// 比大盤波動大的股票
// _p1參數: 
// _p1數值: 0,0.5,0.7,1,1.2,1.3
// 
input:_p1(1);
SetTotalBar(2); 
Value1 = GetField("貝他值");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 2, "Beta");
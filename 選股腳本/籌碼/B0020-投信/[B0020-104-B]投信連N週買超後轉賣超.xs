{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 投信連N週買超後轉賣超
// 顯示名稱: 投信連續[2]週買超後轉為賣超
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,2,3,4
// 
input:_p1(2);

SetTotalBar(2); 
Value1 = GetField("投信買賣超");
if Value1 < 0 and TrueAll(GetField("投信買賣超")[1] > 0, _p1) then ret=1;
OutputField(1, Value1);
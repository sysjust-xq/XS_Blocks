{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自營商(自行買賣)連續N日賣超後轉買超
// 顯示名稱: 自營商(自行買賣)連續[3]日賣超後轉為買超
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10
// 
input:_p1(3);

SetTotalBar(2); 
Value1 = GetField("自營商自行買賣買賣超");
if Value1 > 0 and TrueAll(GetField("自營商自行買賣買賣超")[1] < 0, _p1) then  ret=1;
OutputField(1, Value1);
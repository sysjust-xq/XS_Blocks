{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 關鍵券商連續N日買超後轉賣超
// 顯示名稱: 關鍵券商連續[3]日買超後轉為賣超
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10
// 
input:_p1(3);

SetTotalBar(2); 
Value1 = GetField("關鍵券商買賣超張數");
if Value1 < 0 and TrueAll(GetField("關鍵券商買賣超張數")[1] > 0, _p1) then ret=1;
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 關鍵券商賣超小於N張
// 顯示名稱: 關鍵券商賣超 < [100]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 100,200,300,500,1000
// 
input:_p1(100);
SetTotalBar(2); 
Value1 = GetField("關鍵券商買賣超張數");
if Value1 <= 0 and absvalue(Value1) < _p1 then ret=1; 
OutputField(1, Value1);
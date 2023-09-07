{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 代操券商買超小於N張
// 顯示名稱: 代操券商買超 < [100]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 100,200,300,500,1000,2000,5000,10000
// 
input:_p1(100);
SetTotalBar(2); 
Value1 = GetField("綜合前十大券商買賣超張數");
if Value1 >= 0 and Value1 < _p1 then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 當週投信賣超小於N張
// 顯示名稱: 當週投信賣超 < [1000]張
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 100,200,300,500,1000,2000,5000,10000
// 
input:_p1(1000);
SetTotalBar(2); 
Value1 = GetField("投信買賣超");
if Value1 <= 0 and absvalue(Value1) < _p1 then ret=1; 
OutputField(1, Value1);
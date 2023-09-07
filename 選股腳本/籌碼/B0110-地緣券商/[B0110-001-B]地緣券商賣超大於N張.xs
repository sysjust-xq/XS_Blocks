{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 地緣券商賣超大於N張
// 顯示名稱: 地緣券商賣超 > [500]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,100,200,300,500,1000
// 
input:_p1(500);
SetTotalBar(2); 
Value1 = GetField("地緣券商買賣超張數");
if Value1 < 0 and absvalue(Value1) > _p1 then ret=1; 
OutputField(1, Value1);
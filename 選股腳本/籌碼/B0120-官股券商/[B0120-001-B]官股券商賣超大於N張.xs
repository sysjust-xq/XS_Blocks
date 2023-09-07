{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 官股券商賣超大於N張
// 顯示名稱: 官股券商賣超 > [500]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,100,200,300,500,1000,2000,5000
// 
input:_p1(500);
SetTotalBar(2); 
Value1 = GetField("官股券商買賣超張數");
if Value1 < 0 and absvalue(Value1) > _p1 then ret=1; 
OutputField(1, Value1);
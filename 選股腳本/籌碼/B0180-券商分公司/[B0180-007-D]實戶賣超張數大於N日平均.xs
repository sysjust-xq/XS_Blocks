{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 實戶賣超張數大於N日平均
// 顯示名稱: 實戶賣超張數 > [5]日平均
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("實戶買賣超張數");
Value2 = Average(GetField("實戶買賣超張數"), _p1);
if Value1 > Value2 and value1 < 0 and value2 < 0 then ret=1; 
OutputField(1, Value1);
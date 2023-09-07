{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 當沖張數小於成交量的X%
// 顯示名稱: 當沖張數 < 成交量的[5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,30
// 
input:_p1(5); 

SetTotalBar(2); 
Value1 = GetField("當日沖銷張數");
Value2 = Volume; 
if Value1 < Value2 * _p1 / 100 then ret=1; 
OutputField(1, Value1);
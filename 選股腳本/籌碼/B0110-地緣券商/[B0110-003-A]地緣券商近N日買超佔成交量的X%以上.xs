{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 地緣券商近N日買超佔成交量的X%以上
// 顯示名稱: 地緣券商近[5]日買超佔成交量的[10]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 1,2,3,5,10,15,20,25,30
// 
input:_p1(5);
input:_p2(10); 

SetTotalBar(2); 
Value1 = Summation(GetField("地緣券商買賣超張數"), _p1);
Value2 = Summation(Volume, _p1);
if Value1 > 0 and Value1 >= Value2 * _p2 / 100 then ret=1; 
OutputField(1, Value1);
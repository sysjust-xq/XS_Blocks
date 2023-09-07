{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 借券賣出餘額近N日增加張數佔成交量X%以上
// 顯示名稱: 借券賣出餘額近[5]日增加張數佔成交量的[3]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 0,1,2,3,5,7,10,15
// 
input:_p1(5);
input:_p2(3); 

SetTotalBar(2); 
Value1 = GetField("借券賣出餘額張數") - GetField("借券賣出餘額張數")[_p1];
Value2 = Summation(Volume, _p1); 
if Value1 > 0 and Value1 >= Value2 * _p2 / 100 then ret=1; 
OutputField(1, Value1);
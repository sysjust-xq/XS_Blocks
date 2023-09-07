{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: BBI指標出現賣出訊號
// 顯示名稱: BBI指標出現賣出訊號
// 執行頻率: 日
// 
// 
var:a1(3),a2(6),a3(12),a4(24),BBI(0),length(5);
settotalBar(26);
BBI=(average(close,a1)+average(close,a2)+average(close,a3)+average(close,a4))/4;
Value1 = high - close;   
Value2 = close - low; 
Value3 = average(Value1,length);   
Value4 = average(Value2,length);   
ret = barslast(bbi-close cross under 0)<=0 and barslast(value3-value4 cross under 0)<=0;
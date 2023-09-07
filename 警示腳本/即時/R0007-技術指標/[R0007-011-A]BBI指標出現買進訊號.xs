{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: BBI指標出現買進訊號
// 顯示名稱: BBI指標出現買進訊號
// 執行頻率: 日(逐筆洗價)
// 
// 
var:a1(3),a2(6),a3(12),a4(24),BBI(0),length(5);
settotalBar(26);
BBI=(average(close,a1)+average(close,a2)+average(close,a3)+average(close,a4))/4;
Value1 = high - close;   
Value2 = close - low; 
Value3 = average(Value1,length);   
Value4 = average(Value2,length);   
ret = barslast(close-bbi cross over 0)<=0 and barslast(value4-value3 cross over 0)<=0;
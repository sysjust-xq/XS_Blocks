{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: RSI高檔背離
// 顯示名稱: [6]日RSI從高檔區([80])往下與股價背離
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的RSI期數
// _p1數值: 3,6,12
// _p2參數: RSI的高檔區數值
// _p2數值: 60,70,80
// 
Input: _p1(6),_p2(80);
variable: rsiValue(0);
settotalbar(_p1 * 10);
rsiValue = RSI(Close, _p1);
Ret = linearregslope(RSIValue, _p1) < 0 and linearregslope(Close, _p1) > 0;
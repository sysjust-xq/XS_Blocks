{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: RSI低檔回昇
// 顯示名稱: [6]日RSI突破低檔區([20])
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的RSI期數
// _p1數值: 3,6,12
// _p2參數: RSI的低檔區數值
// _p2數值: 20,30,40
// 
Input: _p1(6),_p2(20);
variable: rsiValue(0);
settotalbar(_p1 * 10);
rsiValue = RSI(Close, _p1);
Ret = rsiValue cross above _p2;
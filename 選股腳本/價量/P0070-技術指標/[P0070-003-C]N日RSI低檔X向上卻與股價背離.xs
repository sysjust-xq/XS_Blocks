{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日RSI低檔X向上卻與股價背離
// 顯示名稱: [6]日RSI低檔([20])向上卻與股價背離
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 20,30,40
// 
Input: _p1(6);
input: _p2(20);
SetBarFreq("AD");
settotalbar(_p1 * 10);
variable: rsiValue(0);
rsiValue = RSI(Close, _p1);
If RSIValue Crosses Above _p2 and
   linearregslope(RSIValue, _p1) > 0 and
   linearregslope(Close, _p1) < 0 then
   Ret = 1;
OutputField(1, rsiValue, 2, "RSI值");
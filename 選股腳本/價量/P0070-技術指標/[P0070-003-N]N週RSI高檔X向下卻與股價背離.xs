{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N週RSI高檔X向下卻與股價背離
// 顯示名稱: [6]週RSI高檔([80])向下卻與股價背離
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 60,70,80
// 
Input: _p1(6);
input: _p2(80);
SetBarFreq("AW");
settotalbar(_p1 * 10);
variable: rsiValue(0);
rsiValue = RSI(Close, _p1);
If RSIValue Crosses Below _p2 and
   linearregslope(RSIValue, _p1) < 0 and
   linearregslope(Close, _p1) > 0 then
   Ret = 1;
OutputField(1, rsiValue, 2, "RSI值");
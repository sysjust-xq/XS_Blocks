{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N週RSI突破低檔區X
// 顯示名稱: [6]週RSI突破低檔區([20])
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 20,30,40
// 
Input: _p1(6);
input: _p2(20);
SetBarFreq("AW");
settotalbar(_p1 * 10);
variable: rsiValue(0);
rsiValue = RSI(Close, _p1);
Ret = rsiValue cross above _p2;
OutputField(1, rsiValue, 2, "RSI值");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N週RSI跌破高檔區X
// 顯示名稱: [12]週RSI跌破高檔區([80])
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 60,70,80
// 
Input: _p1(12);
input: _p2(80);
SetBarFreq("AW");
settotalbar(_p1 * 10);
variable: rsiValue(0);
rsiValue = RSI(Close, _p1);
Ret = rsiValue cross below _p2;
OutputField(1, rsiValue, 2, "RSI值");
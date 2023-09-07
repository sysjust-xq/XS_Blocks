{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日RSI小於X
// 顯示名稱: [6]日RSI < [20]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 20,30,40
// 
Input:_p1(6);//RSI天期
Input:_p2(20);//觸發標準
variable: _Side(-1);//1=大於、-1=小於
variable: rsiValue(0);
settotalbar(maxlist(_p1,6) * 8 + 8);
rsiValue = RSI(GetField("收盤價"), _p1);
if _Side * (rsiValue - _p2) > 0 then ret = 1;
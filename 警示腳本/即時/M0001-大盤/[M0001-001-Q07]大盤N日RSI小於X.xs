{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤N日RSI小於X
// 顯示名稱: 大盤[6]日RSI < [20]
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的RSI期數
// _p1數值: 3,6,12
// _p2參數: RSI的上限值
// _p2數值: 20,30,40
// 
Input:_p1(6);//RSI天期
Input:_p2(20);//觸發標準
variable: _Side(-1);//1=大於、-1=小於
variable: rsiValue(0);
settotalbar(maxlist(_p1,6) * 8 + 8);
rsiValue = RSI(GetField("收盤價"), _p1);
if _Side * (rsiValue - _p2) > 0 then ret = 1;
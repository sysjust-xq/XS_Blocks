{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: N日ATR通道突破
// 顯示名稱: 收盤價向上突破[20]日ATR通道
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的ATR通道期數
// _p1數值: 10,15,20
// 
input:_p1(20);
settotalBar(_p1+2);
value1=average(truerange,_p1);
value2=average(close,_p1)+2*value1;
if close crosses over value2
then ret=1;
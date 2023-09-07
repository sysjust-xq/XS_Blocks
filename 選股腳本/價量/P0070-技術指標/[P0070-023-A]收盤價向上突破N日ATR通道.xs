{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價向上突破N日ATR通道
// 顯示名稱: 收盤價向上突破[20]日ATR通道
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,15,20,30,35
// 
input:_p1(20);
value1=average(truerange,_p1);
value2=average(close,_p1)+2*value1;
if close crosses over value2
then ret=1;
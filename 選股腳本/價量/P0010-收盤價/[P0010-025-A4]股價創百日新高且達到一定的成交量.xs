{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價創百日新高且達到一定的成交量
// 顯示名稱: 股價創百日新高且達到一定的成交量
// 執行頻率: 日
// 
// 
input:day(200,"計算區間");
input:day1(20,"短線漲幅計算區間");
input:percents(10,"距離區間最低點漲幅");
settotalBar(day+2);
value1=lowest(close,day1-1);
if close=highest(close,day-1)
and value1*(1+percents/100)>=high
and high >= value1*1.05
and volume >= average(volume[1], 5)
then ret=1;
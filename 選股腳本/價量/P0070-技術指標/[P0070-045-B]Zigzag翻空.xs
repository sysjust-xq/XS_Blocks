{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: Zigzag翻空
// 顯示名稱: ZigZag翻空
// 執行頻率: 日
// 
// 
var:period(10),zigzag(0);
settotalBar(10+2);
if average(high,period)>1.035*average(close,period)
then zigzag=average(high,period)
else
if average(low,period)<(1-0.035)*average(close,period)
then zigzag=average(low,period)
else
zigzag=average(close,period);
if trueall(zigzag<zigzag[1],3)
then ret=1;
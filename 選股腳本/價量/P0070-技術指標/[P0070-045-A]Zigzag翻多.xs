{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: Zigzag翻多
// 顯示名稱: ZigZag翻多
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
if  trueall(zigzag[2]<zigzag[3],5)
and trueall(zigzag>zigzag[1],2)
and volume>average(volume,period)*1.2
then ret=1;
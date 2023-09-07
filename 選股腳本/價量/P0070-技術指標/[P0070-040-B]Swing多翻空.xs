{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: Swing多翻空
// 顯示名稱: Swing多翻空
// 執行頻率: 日
// 
// 
var:_p1(10),_p2(3);
settotalBar(10+2);
value1=lowest(low,_p1);
if close<value1[1] and close>close[1]*(1+_p2/100)
then ret=1;
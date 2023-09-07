{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價跌破N日均線
// 顯示名稱: 收盤價跌破[5]日均線
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input:_p1(5);
SetTotalBar(3); 
If c cross below average(c,_p1)then ret = 1;
outputField2(average(c,_p1));
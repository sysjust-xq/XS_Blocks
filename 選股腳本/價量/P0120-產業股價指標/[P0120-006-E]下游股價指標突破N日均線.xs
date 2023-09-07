{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 下游股價指標突破N日均線
// 顯示名稱: 下游股價指標突破[20]日均線
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,15,20,60,120,240
// 
input:_p1(20);
SetTotalBar(3); 
If GetField("下游股價指標") cross Above average(GetField("下游股價指標"),_p1)then ret = 1;
outputField2(average(GetField("下游股價指標"),_p1));
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單筆平均成交金額創N日新高
// 顯示名稱: 單筆平均成交金額創[100]日新高
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,60,100,200
// 
input:_p1(100);
settotalBar(_p1+2);
value1=GetField("成交金額");
value2=GetField("總成交次數","D");
if value2>0
then value3=value1/value2;
//成交金額/總成交次數
if value3=highest(value3,_p1)
then ret=1;
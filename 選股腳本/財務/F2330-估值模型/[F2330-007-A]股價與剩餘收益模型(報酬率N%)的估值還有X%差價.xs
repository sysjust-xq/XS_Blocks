{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與剩餘收益模型(報酬率N%)的估值還有X%差價
// 顯示名稱: 股價與剩餘收益模型(報酬率[5]%)的估值還有[30]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,6,7
// _p2參數: 
// _p2數值: 10,20,30,40,50,60
// 
input:_p1(5),_p2(30);
var:pvr(0);
SetTotalBar(3);
value1=getField("總市值(億)", "D");
value2=getField("股東權益總額", "Q");//百萬
value3=getField("股東權益報酬率", "Q");//單位&

pvr=summation(value2*value3/100,10)/power(1+_p1/100,10);
value4=pvr+value2;
if value1*100*(1+_p2/100)<value4
then ret=1;
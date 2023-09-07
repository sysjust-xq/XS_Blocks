{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與GrahamNumber估值還有N%差價
// 顯示名稱: 股價與Graham Number估值還有[25]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,15,20,25,30
// 
settotalBar(2);
var:parvalue(0);
if summation(getField("每股稅後淨利(元)", "Q"),4)<>0 then 
parvalue=squareroot(22.5*summation(getField("每股稅後淨利(元)", "Q"),4)*getField("每股淨值(元)", "Q"));
input:_p1(25);
if getfield("收盤價", "D")<parvalue*((100-_p1)/100)
then ret=1;
outputfield(1,summation(getField("每股稅後淨利(元)", "Q"),4),1,"近四季EPS總和");
outputfield(2,getField("每股淨值(元)", "Q"),1,"每股淨值");
outputfield(3,parvalue,1,"合理股價");
outputfield(4,(1-parvalue/close)*100,1,"折價率");
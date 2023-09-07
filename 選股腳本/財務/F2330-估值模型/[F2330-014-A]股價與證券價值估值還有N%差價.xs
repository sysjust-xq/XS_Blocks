{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與證券價值估值還有N%差價
// 顯示名稱: 股價與證券價值估值還有[30]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 8,10,12,13,15,20,30,50
// 
value1=getField("來自營運之現金流量", "Q")+getField("來自營運之現金流量", "Q")[1]
+getField("來自營運之現金流量", "Q")[2]+getField("來自營運之現金流量", "Q")[3];
value2=getField("長期負債", "Q");
//以上單位百萬元
value3=getField("股本(億)", "D");//單位:億元
input:vm(10,"評價倍數");
SetTotalBar(3);
value4=value1*vm*0.8;
//企業總價值 
value5=(value4-value2)/value3/10;
//每股證券價值
input: _p1(30);
if close<value5*(1-_p1/100)
then ret=1;
outputField(1,value5,0,"每股證券價值");
outputfield(2,close/value5,2,"折價率");
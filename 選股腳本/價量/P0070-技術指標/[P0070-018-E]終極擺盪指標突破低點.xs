{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 終極擺盪指標突破低點
// 顯示名稱: 終極擺盪指標突破低點
// 執行頻率: 日
// 
// 
settotalBar(30);
variable : ruo(0),uo(0),bp(0);  
bp=close-truelow;   
input:l1(7),l2(14),l3(28);   
Value1=summation(bp,l1);   
Value2=summation(bp,l2);   
Value3=summation(bp,l3);   
Value4=summation(truerange,l1);   
Value5=summation(truerange,l2);   
Value6=summation(truerange,l3);   
ruo=(value1/value4)*4+(value2/value5)*2+(value3/value2);   
uo=ruo/7*100;  
if uo cross over 40 then ret=1;
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現金除總市值大於N
// 顯示名稱: 現金/總市值 > [1]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,1.1,1.15,1.12,1.25,1.3
// 
input:_p1(1);
SetTotalBar(3);
value1=GetField("現金及約當現金","Q");//單位百萬
value2=GetField("短期投資","Q");//單位百萬
value3=(value1+value2)/100;//單位億之現金及短期投資合計金額
value4=GetField("總市值","D");//單位:億
if value4<>0
then value5=value3/value4;//現金總市值比;
if value5>_p1 
then ret=1;
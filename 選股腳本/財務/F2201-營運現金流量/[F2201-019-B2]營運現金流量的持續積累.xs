{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營運現金流量的持續積累
// 顯示名稱: 營運現金流量的持續積累
// 執行頻率: 日
// 
// 
settotalBar(10);
value1=GetField("來自營運之現金流量","q");
value2=GetField("總市值","D");
variable: nv(0);
input:ratio(70,"折價百分比");
value3=summation(value1,8);
value4=value3*5;
nv=GetField("股東權益總額","Q");
value5=value2*100/(value4+nv)*100;
if value5<(100-ratio)
and value5>0 then ret=1;
outputfield(1,value5,2,"市值與營運現金流量比值");
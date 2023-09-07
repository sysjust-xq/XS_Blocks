{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與十年自由現金流量估值還有N%差價
// 顯示名稱: 股價與十年自由現金流量估值還有[10]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30
// 
settotalBar(3);
value1= summation(GetField("來自營運之現金流量","Q"),4)-summation(GetField("資本支出金額","Q"),4);
variable:x(0);
value2=0;
for x=1 to 10
begin
value2=value2+value1/power((1+2/100),x);
end;
value3=(GetField("股東權益總額","Q")+value2);
value4=GetField("最新股本");
value5= value3/(value4*100);
if close <>0 then
value6 = (value5 - close)/close * 100;
input:_p1(10);
if value6>_p1 then 
ret=1;
outputfield(1,close,1,"股價");
outputfield(2,value5,1,"每股合理價位");
outputfield(3,value6,1,"折價率");
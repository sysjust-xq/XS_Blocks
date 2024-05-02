{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價淨值比估值還有N%差價
// 顯示名稱: 股價淨值比估值還有[10]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30
// 
input:_p1(10);
settotalbar(2000);
value1=GetField("股價淨值比","D");
//近2000個交易日以來的最高股價淨值比
value2=highest(value1,2000);
var:tp(0);
tp=0;
if highest(GetField("每股稅後淨利(元)","Y"),7)
-lowest(GetField("每股稅後淨利(元)","Y"),7)<1.5 
and trueall(GetField("每股稅後淨利(元)","Y")>1,7)
//每年EPS差距不大且每年賺錢
then begin
tp=value2*0.8*GetField("每股淨值(元)","Q");
//目標價是最高股價淨值比打八折
if close*(1+_p1/100)<tp then ret=1;
end;
outputfield(1,tp,0,"目標價");
outputfield(2,(tp-close)/close*100,1,"預期報酬率");
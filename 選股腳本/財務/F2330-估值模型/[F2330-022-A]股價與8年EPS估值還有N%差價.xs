{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與8年EPS估值還有N%差價
// 顯示名稱: 股價與8年EPS估值還有[30]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30
// 
settotalBar(200);
var:tp(0);//目標價
if lowest(summation(GetField("每股稅後淨利(元)","Q"),4),20)>1
//連續四季合計的EPS在過去20季都大於1元
and highest(summation(GetField("每股稅後淨利(元)","Q"),4),20)-lowest(summation(GetField("每股稅後淨利(元)","Q"),4),20)<1.5
//四季合計的EPS近20季以來最高與最低EPS差1.5元以內
then  
tp=8*average(summation(GetField("每股稅後淨利(元)","Q"),4),20);
input:_p1(30);
if close*(1+_p1/100)<tp then ret=1;
//目標價與市價差30%以上
outputfield(1,tp,0,"目標價");
outputfield(2,(tp-close)/close*100,1,"預期報酬率");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與7年EPS加淨值估值還有N%差價
// 顯示名稱: 股價與7年EPS加淨值估值還有[30]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30
// 
settotalBar(3);
var:tp(0);
input:_p1(30);
if highest(GetField("每股稅後淨利(元)","Y"),7)
-lowest(GetField("每股稅後淨利(元)","Y"),7)<1.5 
and trueall(GetField("每股稅後淨利(元)","Y")>1,7)
//每年EPS差距不大且每年賺錢
then tp=GetField("每股淨值(元)","Q")+
average(GetField("每股稅後淨利(元)","Y"),4)*7;
if close < TP*(1-_p1*0.01)
then ret=1;
outputfield(1,tp,1,"目標價");
outputfield(2,tp/close-1,1,"折價率");
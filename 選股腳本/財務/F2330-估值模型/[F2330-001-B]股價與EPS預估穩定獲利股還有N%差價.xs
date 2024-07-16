{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價與EPS預估穩定獲利股還有N%差價
// 顯示名稱: 股價與EPS預估穩定獲利股還有[30]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30
// 
input:_p1(30);
//獲利穩定股目標價計算方法
value1=GetField("每股稅後淨利(元)","Q");
value2=summation(value1,4);
//最近四季的EPS總和
value3=highest(value2,20);
//過去20季以來四季EPS總和的最高值
value4=lowest(value2,20);
//過去20季以來四季EPS總和的最低值
value5=average(value2,20);
var:tp(0);//目標價
if value4>1
//連續四季合計的EPS在過去20季都大於1元
and value3-value4<3
//四季合計的EPS近20季以來最高與最低EPS差1.5元以內
then  
tp=8*value5;
if close*(1+_p1/100)<tp then ret=1;
//目標價與市價差30%以上
outputfield(1,tp,0,"目標價");
outputfield(2,(tp-close)/close*100,1,"預期報酬率");
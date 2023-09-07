{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最近N日內更換董總的股票
// 顯示名稱: 最近[10]日內更換董總的股票
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,10,20,30,60
// 
variable:kk("0");
variable:bb("0");
input:_p1(10);
settotalBar(_p1+3);
kk=GetField("董事長");
bb=GetField("總經理");
if trueAny(kk<>kk[1],_p1) or trueAny(bb<>bb[1],_p1) then ret=1;
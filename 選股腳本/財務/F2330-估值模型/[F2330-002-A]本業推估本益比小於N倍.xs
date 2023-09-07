{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 本業推估本益比小於N倍
// 顯示名稱: 本業推估本益比 < [10]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 6,7,8,9,10,12,15
// 
input:_p1(10);
SetTotalBar(3);
value1 = summation(GetField("營業利益","Q"),4);
value2 = 100-getfield("有效稅率", "Q");
value3 = ((value1*value2/1000))/GetField("最新股本"); //預估EPS
if value3>0 and close/value3<=_p1
then ret=1;
outputfield(1,close/value3,1,"本益比");
outputfield(2,value3,1,"EPS");
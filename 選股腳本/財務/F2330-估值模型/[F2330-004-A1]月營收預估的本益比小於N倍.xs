{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收預估的本益比小於N倍
// 顯示名稱: 月營收預估的本益比 < [10]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 6,7,8,9,10,12,15
// 
variable:FEPS(0);
input:_p1(10);
SetTotalBar(3);
value1=summation(GetField("月營收", "M"),3)*4;//億
value2=GetField("營業利益率","Q");
value3=value1*value2/100;
value4=GetField("最新股本");//億
FEPS=value3/value4*10;
if feps<>0
then value5=close/feps;
if value5<_p1  and value5 > 0
then ret=1;
outputfield(1,FEPS,2,"用月營收預估的本業EPS");
outputfield2(value5,"用月營收預估的本益比");
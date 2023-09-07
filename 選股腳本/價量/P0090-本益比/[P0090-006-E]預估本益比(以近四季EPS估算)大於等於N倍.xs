{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 預估本益比(以近四季EPS估算)大於等於N倍
// 顯示名稱: 預估本益比(以近四季EPS估算) >= [10]倍
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 5,6,7,8,9,10,11,12,13,14,15,20,30,40
// 
input: _p1(10);
SetTotalBar(20);
SetBarFreq("Q");
Value1 = GetField("收盤價");
If GetField("發行張數(張)") <> 0 then
value2 = summation(GetField("本期稅後淨利","Q"),4)/((GetField("發行張數(張)")/1000));//近4季累積EPS
value3 = value1/value2;
if Summation(value3, 4) >= _p1 then ret=1;
OutputField(1, Summation(value3, 4), "近四季PE");
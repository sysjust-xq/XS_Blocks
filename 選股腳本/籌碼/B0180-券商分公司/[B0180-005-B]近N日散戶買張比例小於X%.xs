{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日散戶買張比例小於X%
// 顯示名稱: 近[5]日散戶買張比例 < [30]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 30,40,50,60,70
// 
input:_p1(5);
input:_p2(30);
SetTotalBar(_p1+2);
Value1 = GetField("散戶買張");
value2 = GetField("成交量");
if summation(value2,_p1)<> 0 and
((summation(value1,_p1)/summation(value2,_p1)))*100 < _p2 then ret = 1;
OutputField(1,((summation(value1,_p1)/summation(value2,_p1)))*100 );
OutputField2(Value2);
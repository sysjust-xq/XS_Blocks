{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日主力賣超佔流動股本比N%
// 顯示名稱: 近[5]日主力賣超佔流動股本比 < [3]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// _p2參數: 
// _p2數值: 1,2,3,5
// 
input:_p1(5);
input:_p2(3); 
SetTotalBar(2); 
Value1 = Summation(GetField("主力買賣超張數"), _p1);
value2 = GetField("發行張數(張)")- GetField("董監持股","M");
If value2 <> 0 then  value3 = (value1/value2)*100 ;
if value3 < 0 and value3 < -1*_p2 then ret=1; 
OutputField(1, Value3);
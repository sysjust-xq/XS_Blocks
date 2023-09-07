{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價跟N日均線間隔小於X%
// 顯示名稱: 收盤價跟[5]日均線間隔小於[3]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 0,1,3,5,7,10
// 
input:_p1(5);
input:_p2(3);
SetTotalBar(2); 
Value1 = GetField("收盤價");
Value2 = Average(GetField("收盤價"), _p1);
condition1= value1 > value2 and Value1 < Value2*(1+(_p2/100));
condition2= value1 < value2 and Value1 > Value2*(1-(_p2/100));
If condition1 or condition2 then ret = 1;
OutputField(1, Value1); 
OutputField(2, Value2);
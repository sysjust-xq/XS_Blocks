{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價大於近N日平均X%以上
// 顯示名稱: 收盤價 > [5]日均線[3]%以上
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
Value1 = GetField("Close");
Value2 = Average(GetField("Close"), _p1);
if Value1 > Value2*(1+(_p2/100)) then ret=1; 
OutputField(1, Value1, 2, "收盤價");
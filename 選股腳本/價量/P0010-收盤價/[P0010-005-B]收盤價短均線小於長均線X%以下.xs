{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價短均線小於長均線X%以下
// 顯示名稱: 收盤價[5]日均線低於[10]日均線 [2]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 5,10,20,60,120,240
// _p3參數: 
// _p3數值: 1,2,3,5,10
// 
input:_p1(5);
input:_p2(10);
input:_p3(2);
SetBarFreq("AD");
SetTotalBar(3); 
if _p1 >= _p2 then return;
value1 = Average(GetField("Close"),_p1);
value2 = Average(GetField("Close"),_p2);
if value1 < value2*(1-0.01*_p3) then ret=1;
OutputField(1, GetField("Close"), 2, "收盤價");
OutputField(2, Value1, 2, "短天期平均");
OutputField(3, Value2, 2, "長天期平均");
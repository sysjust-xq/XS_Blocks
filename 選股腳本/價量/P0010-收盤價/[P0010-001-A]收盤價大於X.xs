{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價大於X
// 顯示名稱: 收盤價 >= [50]元
// 執行頻率: 日
// 
// _p1參數: 指定數值
// _p1數值: 10,20,30,40,50,60,70,80,90,100,200,500,1000
// 
input:_p1(50);
SetTotalBar(2); 
Value1 = GetField("Close");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 2, "收盤價");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 每股淨值小於X元
// 顯示名稱: 每股淨值 < [10]元
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 5,6,7,8,9,10,15,20,30,50,100
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("每股淨值(元)")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
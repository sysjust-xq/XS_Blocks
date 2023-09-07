{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 高低差大於等於X
// 顯示名稱: 高低差 >= [3]元
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,50
// 
input:_p1(3);
SetTotalBar(2); 
Value1 = GetField("振幅");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 2, "震盪幅度");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 內部人持股大於等於N%
// 顯示名稱: 內部人持股 >= [50]%
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 30,40,50,60,70
// 
input:_p1(50);
SetTotalBar(2); 
Value1 = GetField("內部人持股比例");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1);
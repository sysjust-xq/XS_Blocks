{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現增比例大於等於N%
// 顯示名稱: 現增比例 >= [5]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,30,50,70,100
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("現增比率");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 0, "現金增資");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 上游股價指數小於N日均線X%以上
// 顯示名稱: 上游股價指數 < [20]日均線 [3]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 0,1,3,5,7,10
// 
input:_p1(20);
input:_p2(3);
SetTotalBar(2); 
Value1 = GetField("上游股價指標");
Value2 = Average(GetField("上游股價指標"), _p1);
if Value1 < Value2*(1-(_p2/100)) then ret=1; 
OutputField(1, Value1, 2, "產業股價指標");
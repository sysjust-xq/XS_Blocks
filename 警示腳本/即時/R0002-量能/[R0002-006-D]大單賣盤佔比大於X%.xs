{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大單賣盤佔比大於X%
// 顯示名稱: 大單賣盤佔比大於[50]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 比率的下限值
// _p1數值: 50,60,70,80
// 
input: _p1(50);
SetTotalBar(0);
value1 = 
GetField("買進特大單金額", "D") + GetField("買進大單金額", "D") + GetField("買進中單金額", "D") + GetField("買進小單金額", "D");
value2 = 
GetField("賣出特大單金額", "D") + GetField("賣出大單金額", "D") + GetField("賣出中單金額", "D") + GetField("賣出小單金額", "D");
value3 = value1 + value2;
if value3 = 0 then return;
value4 = 100 * (GetField("賣出特大單金額", "D") + GetField("賣出大單金額", "D")) / value3;
if value4 >= _p1 then ret=1;
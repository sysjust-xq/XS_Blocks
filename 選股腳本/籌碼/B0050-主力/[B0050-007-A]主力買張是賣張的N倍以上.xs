{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 主力買張是賣張的N倍以上
// 顯示名稱: 主力買張是賣張的[2]倍以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 2,3,5,10
// 
input:_p1(2);
SetTotalBar(2); 
Value1 = GetField("主力買張");
value2 = GetField("主力賣張");
If value1 > (_p1* value2) then ret = 1;
OutputField(1, Value1); 
OutputField(2, Value2);
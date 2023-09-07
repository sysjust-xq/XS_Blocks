{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價N日均線翻揚
// 顯示名稱: 收盤價[5]日均線翻陽
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input: _p1(5);
SetBarFreq("AD");
SetTotalBar(4);
Value1 = Average(GetField("Close"), _p1);
if Value1 > Value1[1] and Value1[1] < Value1[2] then ret=1;
OutputField(1, Value1, 2, "收盤價平均");
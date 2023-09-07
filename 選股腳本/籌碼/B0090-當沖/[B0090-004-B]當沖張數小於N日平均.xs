{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 當沖張數小於N日平均
// 顯示名稱: 當沖張數 < 近[5]日平均
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 2,3,5,10,20,30,60
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("當日沖銷張數");
Value2 = Average(GetField("當日沖銷張數"), _p1);
if Value1 < Value2 then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 新聞則數小於N則
// 顯示名稱: 新聞則數 < [5]則
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5
// 
input:_p1(5);
SetTotalBar(2); 
Value1 = GetField("新聞聲量分數");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
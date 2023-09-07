{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價淨值比大於等於X倍
// 顯示名稱: 股價淨值比 >= [1]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.5,0.6,0.7,0.8,0.9,1,1.1,1.2,1.3,1.4,1.5,2,3,5
// 
input:_p1(1);
SetTotalBar(2); 
Value1 = GetField("股價淨值比");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 2, "股價淨值比");
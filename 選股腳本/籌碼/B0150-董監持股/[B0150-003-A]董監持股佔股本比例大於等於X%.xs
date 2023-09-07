{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 董監持股佔股本比例大於等於X%
// 顯示名稱: 董監持股佔股本比例 >= [15]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,8,10,15,20,30,40,50
// 
input:_p1(15); 
SetTotalBar(2); 
Value1 = GetField("董監持股佔股本比例");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 2, "董監持股佔股本比例");
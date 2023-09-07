{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融券餘額佔股本比例大於X%
// 顯示名稱: 融券餘額佔股本比例大於[3]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.3,0.5,1,2,3,5,10,20
// 
input:_p1(3);
SetTotalBar(2); 
Value1 = GetField("融券餘額佔股本比例");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1);
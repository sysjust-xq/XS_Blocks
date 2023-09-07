{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融資餘額佔股本比例小於X%
// 顯示名稱: 融資餘額佔股本比例小於[2]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.3,0.5,1,2,3,5,10,20
// 
input:_p1(2);
SetTotalBar(2); 
Value1 = GetField("融資餘額佔股本比例");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);
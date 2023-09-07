{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融資使用率大於X%
// 顯示名稱: 融資使用率 >= [60]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 30,40,50,60,70,80
// 
input:_p1(60);
SetTotalBar(2); 
Value1 = GetField("融資使用率");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1);
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融資維持率大於X%
// 顯示名稱: 融資維持率 > [150]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 30,40,50,75,150
// 
input:_p1(150);
SetTotalBar(2); 
Value1 = GetField("融資維持率");
if Value1 >= _p1 and getfield("融資餘額張數") > 0 then ret=1; 
OutputField(1, Value1);
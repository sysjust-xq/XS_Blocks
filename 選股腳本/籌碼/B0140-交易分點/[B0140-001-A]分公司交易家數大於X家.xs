{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 分公司交易家數大於X家
// 顯示名稱: 分公司交易家數 > [500]家
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 100,200,300,500,800
// 
input:_p1(500);
SetTotalBar(2); 
Value1 = GetField("分公司交易家數");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1);
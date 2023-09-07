{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最近N日內被交易所注意的股票
// 顯示名稱: 最近[10]日內被交易所注意的股票
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,15,20,25
// 
input:_p1(10);
SetTotalBar(_p1); 
if GetSymbolInfo("注意股") = true then value1 = value1 + 1;
If value1 > 0 then ret = 1;
outputField1(value1);
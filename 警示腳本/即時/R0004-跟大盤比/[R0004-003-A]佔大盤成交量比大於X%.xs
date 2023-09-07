{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 佔大盤成交量比大於X%
// 顯示名稱: 佔大盤成交量比大於[1]%
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 幅度的下限值
// _p1數值: 0.05,0.1,0.2,0.5,1
// 
input: _p1(1);
SetBackBar(2, "D");
SetTotalBar(2);

value1 = GetField("成交金額(元)", "D");

if GetSymbolInfo("交易所") = "TSE" then
        value2 = GetSymbolField("TSE.TW", "成交量", "D")
else if GetSymbolInfo("交易所") = "OTC" then
        value2 = GetSymbolField("OTC.TW", "成交量", "D")
else
        raiseRunTimeError("執行商品非台股，請除錯");

if value2 <> 0 then
        value3 = 100 * value1 / value2
else
        value3 = value3[1];

if 1 * (value3 - _p1) >= 0 then ret=1;
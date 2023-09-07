{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 比大盤強
// 顯示名稱: 比大盤強(超過[1]%)
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 幅度的下限值
// _p1數值: 0,1,2,3,5
// 
Var: _v1(0);
Input: _p1(1);
var: _period(0),_level(0);
SetBackBar(_p1, "D");
SetTotalBar(2);
_period = iff(_v1 > 1, _v1 - 1, _v1);
value1 = 100 * (GetField("收盤價","D")/absvalue(GetField("參考價", "D")[_period]) - sign(GetField("參考價", "D")[_period]));
if GetSymbolInfo("交易所") = "TSE" then
        value2 = 100 * (GetSymbolField("TSE.TW", "收盤價","D")/absvalue(GetSymbolField("TSE.TW", "收盤價", "D")[_period+1]) - sign(GetSymbolField("TSE.TW", "收盤價", "D")[_period+1]))
else if GetSymbolInfo("交易所") = "OTC" then
        value2 = 100 * (GetSymbolField("OTC.TW", "收盤價","D")/absvalue(GetSymbolField("OTC.TW", "收盤價", "D")[_period+1]) - sign(GetSymbolField("OTC.TW", "收盤價", "D")[_period+1]))
else
        raiseRunTimeError("執行商品非台股，請除錯"); 
if 1 * (value1 - (value2 + 1 * _p1)) >= 0 then ret=1;
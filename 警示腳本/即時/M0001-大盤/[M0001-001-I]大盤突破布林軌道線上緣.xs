{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤突破布林軌道線上緣
// 顯示名稱: 大盤突破布林軌道線上緣
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:Length(20);
Var:BBand(2);
variable:_Side(0);
SetTotalBar(23);
_Side = 1;
Value1 = bollingerband(getfield("收盤價"), Length, _Side * BBand);
if _Side = 1 and getfield("收盤價") cross above Value1 then ret = 1
else if _Side = -1 and getfield("收盤價") cross Below Value1 then ret = 1;
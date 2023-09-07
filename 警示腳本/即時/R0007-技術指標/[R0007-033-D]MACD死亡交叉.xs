{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: MACD死亡交叉
// 顯示名稱: 日MACD死亡交叉
// 執行頻率: 日(逐筆洗價)
// 
// 
Var: _p1(12); 
Var: _p2(26); 
Var: _p3(9); 
variable: difValue(0), macdValue(0), oscValue(0);
Var:_Side(-1);//1為正向。-1為負向。
SetTotalBar((maxlist(12,26) +9) * 4);
MACD(weightedclose(), _p1, _p2, _p3, difValue, macdValue, oscValue);

if _Side = 1 and difValue Crosses Above macdValue then ret = 1
else if _Side = -1 and difValue Crosses Below macdValue then ret = 1;
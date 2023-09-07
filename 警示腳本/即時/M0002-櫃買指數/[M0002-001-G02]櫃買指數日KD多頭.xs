{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數日KD多頭
// 顯示名稱: 櫃買指數日KD多頭
// 執行頻率: 日(逐筆洗價)
// 
// 
variable: rsv(0), k(0), _d(0);
Var:_Side(1);
SetTotalBar((maxlist(9,6) * 3 + 8)*5);
stochastic(9, 3, 3, rsv, k, _d);

if _Side = 1 and k>_d then ret = 1
else if _Side = -1 and k<_d then ret = 1;
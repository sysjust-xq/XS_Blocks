{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: KD出現死亡交叉
// 顯示名稱: KD出現死亡交叉
// 執行頻率: 日(逐筆洗價)
// 
// 
var: _Length(9), _RSVt(3), _Kt(3), _rsv(0), _k(0), _d(0);
SetTotalBar(maxlist(9,6) * 3 + 8);
Stochastic(_Length, _RSVt, _Kt, _rsv, _k, _d);
ret = _k crosses under _d;
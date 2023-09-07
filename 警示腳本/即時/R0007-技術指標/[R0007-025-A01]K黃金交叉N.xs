{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: K黃金交叉N
// 顯示名稱: 日K突破低檔區[20]
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: K值得低檔區數值
// _p1數值: 20,30,40
// 
Input:_p1(20);
variable: Length(9), RSVt(3), Kt(3), rsv(0), k(0), _d(0);
Var:_Side(1);//1為黃金交叉。-1為死亡交叉。
SetTotalBar(40);
Stochastic(Length, RSVt, Kt, rsv, k, _d);
if _Side = 1 and k crosses over _p1 then ret = 1
else if _Side = -1 and k crosses under _p1 then ret = 1;
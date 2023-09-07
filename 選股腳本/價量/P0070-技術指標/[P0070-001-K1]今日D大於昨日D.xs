{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今日D大於昨日D
// 顯示名稱: 今日D > 昨日D
// 執行頻率: 日
// 
// 
input: _p1(20, "低檔區");
input: Length(9, "天期"), RSVt(3, "RSV權數"), Kt(3, "Kt權數");
variable: rsv(0), k(0), _d(0);
SetBarFreq("AD");
SetTotalBar(Length * 3);
Stochastic(Length, RSVt, Kt, rsv, k, _d);
if _d > _d[1] then ret=1;
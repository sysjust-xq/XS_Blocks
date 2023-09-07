{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 日K大於日D
// 顯示名稱: 日K > 日D
// 執行頻率: 日
// 
// 
input: Length(9, "天期"), RSVt(3, "RSV權數"), Kt(3, "Kt權數");
variable: rsv(0), k(0), _d(0);
SetBarFreq("AD");
SetTotalBar(Length * 3);
Stochastic(Length, RSVt, Kt, rsv, k, _d);
ret = k > _d;
OutputField(1, k, 2, "K值");
OutputField(2, _d, 2, "D值");
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 本週K大於上週K
// 顯示名稱: 本週K >上週K
// 執行頻率: 週
// 
// 
input: Length(5, "天期"), RSVt(3, "RSV權數"), Kt(3, "Kt權數");
variable: rsv(0), k(0), _d(0);
SetBarFreq("AW");
SetTotalBar(Length * 3);
Stochastic(Length, RSVt, Kt, rsv, k, _d);
ret = k > K[1];
OutputField(1, k, 2, "K值");
OutputField(2, _d, 2, "D值");
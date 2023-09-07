{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 週KD死亡交叉
// 顯示名稱: 週KD死亡交叉
// 執行頻率: 週
// 
// 
input: Length(5, "天期"), RSVt(3, "RSV權數"), Kt(3, "Kt權數");
variable: rsv(0), k(0), _d(0);
SetBarFreq("AW");
SetTotalBar(Length * 3);
Stochastic(Length, RSVt, Kt, rsv, k, _d);
if k crosses below _d then ret=1;
OutputField(1, k, 2, "K值");
OutputField(2, _d, 2, "D值");
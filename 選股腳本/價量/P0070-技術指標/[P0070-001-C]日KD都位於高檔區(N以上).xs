{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 日KD都位於高檔區(N以上)
// 顯示名稱: 日KD都位於高檔區([80]以上)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 50,60,70,80
// 
input: _p1(80);
input: Length(9, "天期"), RSVt(3, "RSV權數"), Kt(3, "Kt權數");
variable: rsv(0), k(0), _d(0);
SetBarFreq("AD");
SetTotalBar(Length * 3);
Stochastic(Length, RSVt, Kt, rsv, k, _d);
if k >= _p1 and _d >= _p1 then ret=1;
OutputField(1, k, 2, "K值");
OutputField(2, _d, 2, "D值");
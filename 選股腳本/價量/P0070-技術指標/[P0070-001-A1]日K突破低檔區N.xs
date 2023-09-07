{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 日K突破低檔區N
// 顯示名稱: 日K突破低檔區[20]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,40
// 
input: Length(9, "天期"), RSVt(3, "RSV權數"), Kt(3, "Kt權數"),_p1(20);
variable: rsv(0), k(0), _d(0);
SetBarFreq("AD");
SetTotalBar(Length * 3);
Stochastic(Length, RSVt, Kt, rsv, k, _d);
ret = k crosses over _p1;
OutputField(1, k, 2, "K值");
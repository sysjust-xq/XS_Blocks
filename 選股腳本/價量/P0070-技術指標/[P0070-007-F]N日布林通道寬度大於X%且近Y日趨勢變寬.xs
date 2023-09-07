{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日布林通道寬度大於X%且近Y日趨勢變寬
// 顯示名稱: [20]日布林通道寬度大於[50]%，且近[3]日趨勢變寬
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,60
// _p2參數: 
// _p2數值: 20,30,50,60
// _p3參數: 
// _p3數值: 3,5,10
// 
input: _p1(20), UpperBand(2), LowerBand(2), EMALength(3),_p3(3),_p2(50);
variable: up(0), down(0), mid(0), bbandwidth(0), ema(0);
SetTotalBar(_p1+2);
up = bollingerband(Close, _p1, UpperBand);
down = bollingerband(Close, _p1, -1 * LowerBand);
mid = (up + down) / 2;
bbandwidth = 100 * (up - down) / mid;
ema = XAverage(bbandwidth, EMALength);
If bbandwidth > _p2 and UpTrend(bbandwidth,_p3) then ret = 1;
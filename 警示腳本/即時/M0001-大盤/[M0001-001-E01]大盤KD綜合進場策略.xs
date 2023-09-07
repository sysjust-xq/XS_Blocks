{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤KD綜合進場策略
// 顯示名稱: 大盤KD綜合進場策略
// 執行頻率: 日(逐筆洗價)
// 
// 
variable: Length1(5),Length2(9),Length3(14),length4(20),length5(30),length6(40),length7(60), RSVt(3), Kt(3);
variable: rsv1(0), k1(0), d1(0);
variable: rsv2(0), k2(0), d2(0);
variable: rsv3(0), k3(0), d3(0);
variable: rsv4(0), k4(0), d4(0);
variable: rsv5(0), k5(0), d5(0);
variable: rsv6(0), k6(0), d6(0);
variable: rsv7(0), k7(0), d7(0);
variable:count(0),_Side(1);
SetTotalBar(maxlist(60,6) * 3 + 8);
Stochastic(Length1, RSVt, Kt, rsv1, k1, d1);
Stochastic(Length2, RSVt, Kt, rsv2, k2, d2);
Stochastic(Length3, RSVt, Kt, rsv3, k3, d3);
Stochastic(Length4, RSVt, Kt, rsv4, k4, d4);
Stochastic(Length5, RSVt, Kt, rsv5, k5, d5);
Stochastic(Length6, RSVt, Kt, rsv6, k6, d6);
Stochastic(Length7, RSVt, Kt, rsv7, k7, d7);
count=0;
if k1>d1 then count=count+1;
if k2>d2 then count=count+1;
if k3>d3 then count=count+1;
if k4>d4 then count=count+1;
if k5>d5 then count=count+1;
if k6>d6 then count=count+1;
if k7>d7 then count=count+1;
if  _Side = 1 and count[1]<=2 and count>=6 then ret = 1
else if _Side = -1 and count<=2 and count[1]>=6 then ret = 1;
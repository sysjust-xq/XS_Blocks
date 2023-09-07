{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 帶量突破糾結均線
// 顯示名稱: 帶量突破糾結均線
// 執行頻率: 日
// 
// 
settotalBar(20);
var: shortlength(5),midlength(10),Longlength(20);
var: Percent(5),XLen(20),Volpercent(25);
//帶量突破的量是超過最長期的均量多少%
var: shortaverage(0),midaverage(0),Longaverage(0),AvgHLp(0),AvgH(0),AvgL(0);
shortaverage = average(close,shortlength);
midaverage = average(close,midlength);
Longaverage = average(close,Longlength);                
AvgH = maxlist(shortaverage,midaverage,Longaverage);
AvgL = minlist(shortaverage,midaverage,Longaverage);
if AvgL > 0 then AvgHLp = 100*AvgH/AvgL -100;
condition1 = trueAll(AvgHLp < Percent,XLen);
condition2 = V > average(V[1],XLen)*(1+Volpercent/100) ;
condition3 = C > AvgH *(1.02) and H > highest(H[1],XLen);
condition4 = average(volume[1], 5) >= 1000;
ret = condition1 and condition2 and condition3 and condition4 ;
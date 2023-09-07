{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: SRMA動向速率指標出現買進訊號
// 顯示名稱: SRMA動向速率出現買進訊號
// 執行頻率: 日
// 
// 
settotalBar(20+2);
variable:DMZ(0),dmf(0),ADMZ(0),ADMF(0),SRDM(0),ASRDM(0);
if (high+low)<(high[1]+low[1])
then 
dmz=maxlist(absvalue(high-high[1]),absvalue(low-low[1]))
else
dmf=maxlist(absvalue(high-high[1]),absvalue(low-low[1]));
admz=average(dmz,10);
admf=average(dmf,10);

srdm=(admz-admf)/admz;
asrdm=average(srdm,20);
if srdm crosses over asrdm
then ret=1;
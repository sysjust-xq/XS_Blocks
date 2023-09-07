{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 修正式價量指標黃金交叉
// 顯示名稱: 修正式價量指標黃金交叉
// 執行頻率: 日
// 
// 
input:day(10);
settotalBar(10+2);
setinputname(1,"移動平均線天數");
variable:tvp(0),mpc(0);
mpc=(open+high+low+close)/4;
if mpc[1]<>0
then tvp=tvp[1]+(mpc-mpc[1])/mpc[1]*volume
else tvp=tvp[1];
value1=average(tvp,day);
IF tvp crosses over value1 and volume>1000
and tvp>value1*1.05
then ret=1;
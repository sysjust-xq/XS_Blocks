{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 循環指標轉正
// 顯示名稱: 循環指標轉正
// 執行頻率: 日
// 
// 
input:period(20);
input:delta(0.5);
input:fraction(0.1);
settotalBar(200);
variable:price(0);
variable:alpha(0),beta(0),gamma(0),bp(0),i(0),mean(0);
price=(h+l)/2;
beta=cosine(360/period);
gamma=1/cosine(720*delta/period);
alpha=gamma-squareroot(gamma*gamma-1);
bp=0.5*(1-alpha)*(price-price[2])+beta*(1+alpha)*bp[1]-alpha*bp[2];
mean=average(bp,2*period);

if mean crosses over 0
then ret=1;
{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: BandPassFiter低檔回昇
// 顯示名稱: BandPass Fiter低檔回昇
// 執行頻率: 日
// 
// 
input:period(20),delta(0.1);
variable: price(0),gamma(0),alpha(0),beta(0),BP(0);
settotalBar(20);
price=(h+l)/2;
beta=cosine(360/period);
gamma=1/cosine(720*delta/period);
alpha=gamma-squareroot(gamma*gamma-1);
BP=0.5*(1-alpha)*(price-price[2])
+beta*(1+alpha)*BP[1]-alpha*BP[2];
if BP cross over 0
then ret=1;
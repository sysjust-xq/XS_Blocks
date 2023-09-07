{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: Vortex指標高檔下跌
// 顯示名稱: Vortex指標高檔下跌
// 執行頻率: 日
// 
// 
Var: _p1(14),pvm(0),nvm(0);
settotalBar(14+2);
pvm=absvalue(high-low[1]);
nvm=absvalue(low-high[1]);
value1=summation(pvm,_p1);
value2=summation(nvm,_p1);
value3=summation(truerange,_p1);
value4=value1/value3;
value5=value2/value3;
value6=value4-value5;
ret = value6 crosses under 0;
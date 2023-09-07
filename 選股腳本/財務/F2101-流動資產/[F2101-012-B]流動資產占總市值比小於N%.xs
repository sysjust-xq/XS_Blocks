{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 流動資產占總市值比小於N%
// 顯示名稱: 流動資產占總市值比 < [100]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 30,50,70,100,120,130,140
// 
input:_p1(100);
SetTotalBar(3);
If GetField("流動資產") < (GetField("總市值(億)")*100)*((_P1*0.01)) then ret = 1;
outputField(1,GetField("流動資產"),"流動資產");
outputField(2,GetField("總市值(億)"),"總市值(億)");
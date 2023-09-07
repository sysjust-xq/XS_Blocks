{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 來自營運的現金流量波動度近N季小於X%
// 顯示名稱: 來自營運的現金流量波動度近[4]季 < [50]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 0,10,30,50,100,200
// 
input:_p1(4);
input:_p2(50);
SetTotalBar(3); 
If VariancePS(GetField("來自營運之現金流量"),_p1,2)< _p2 then ret = 1;
outputField1(VariancePS(GetField("來自營運之現金流量"),_p1,2));